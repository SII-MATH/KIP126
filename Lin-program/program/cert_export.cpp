// Lin Program certificate exporter.
//
// The exporter deliberately does not decide mathematical truth.  It converts
// deterministic Adams/ss exports into a small, versioned JSONL envelope that
// a Lean checker can parse and validate.  Unknown values from ss remain
// explicit unknowns; they are never silently converted to zero.

#include <array>
#include <cstdint>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <string_view>
#include <vector>
#include <algorithm>

namespace {

using Rows = std::vector<std::vector<std::string>>;

std::string trim(std::string s) {
    const auto first = s.find_first_not_of(" \t\r\n");
    if (first == std::string::npos) return {};
    const auto last = s.find_last_not_of(" \t\r\n");
    return s.substr(first, last - first + 1);
}

// Single-line CSV subset: quoted commas and doubled quotes are supported.
std::vector<std::string> csv_line(std::string_view line) {
    std::vector<std::string> result;
    std::string field;
    bool quoted = false;
    bool closed = false;
    for (std::size_t i = 0; i < line.size(); ++i) {
        const char c = line[i];
        if (c == '"') {
            if (quoted && i + 1 < line.size() && line[i + 1] == '"') {
                field.push_back('"');
                ++i;
            } else if (quoted) {
                quoted = false;
                closed = true;
            } else {
                if (!field.empty() || closed) throw std::runtime_error("invalid CSV quote");
                quoted = true;
            }
        } else if (c == ',' && !quoted) {
            result.push_back(field);
            field.clear();
            closed = false;
        } else {
            if (closed) throw std::runtime_error("characters after closing CSV quote");
            field.push_back(c);
        }
    }
    if (quoted) throw std::runtime_error("unterminated CSV quote");
    result.push_back(field);
    return result;
}

void check_headers(const std::vector<std::string>& headers) {
    auto sorted = headers;
    std::sort(sorted.begin(), sorted.end());
    if (sorted.empty() || sorted.front().empty() ||
        std::adjacent_find(sorted.begin(), sorted.end()) != sorted.end())
        throw std::runtime_error("empty or duplicate CSV header");
}

Rows read_csv(const std::string& path) {
    std::ifstream in(path);
    if (!in) throw std::runtime_error("cannot open CSV input: " + path);
    Rows rows;
    std::string line;
    while (std::getline(in, line)) {
        if (!line.empty() && line.back() == '\r') line.pop_back();
        if (line.empty()) continue;
        rows.push_back(csv_line(line));
    }
    if (rows.empty()) throw std::runtime_error("CSV input has no header: " + path);
    const auto width = rows.front().size();
    check_headers(rows.front());
    for (const auto& row : rows)
        if (row.size() != width)
            throw std::runtime_error("CSV row has a different number of fields: " + path);
    return rows;
}

// Streaming variant used for proof logs.  The proof database can contain
// tens of millions of rows, so the exporter must not retain it in memory.
template <typename Callback>
void stream_csv(const std::string& path, Callback callback) {
    std::ifstream in(path);
    if (!in) throw std::runtime_error("cannot open CSV input: " + path);
    std::size_t physical_line = 0;
    std::size_t record_start = 0;
    auto next_record = [&](std::vector<std::string>& fields) {
        constexpr std::size_t max_record_bytes = 10 * 1024 * 1024;
        std::string record, line;
        bool quoted = false;
        bool started = false;
        while (std::getline(in, line)) {
            ++physical_line;
            if (!line.empty() && line.back() == '\r') line.pop_back();
            if (!started && line.empty()) continue;
            if (!started) {
                record_start = physical_line;
                started = true;
            } else record.push_back('\n');
            if (record.size() > max_record_bytes || line.size() > max_record_bytes - record.size())
                throw std::runtime_error(path + ":" + std::to_string(record_start) +
                                         ": CSV record exceeds 10 MiB");
            record += line;
            // Escaped pairs toggle twice; final quote state determines only
            // record boundaries. csv_line still validates every quote position.
            for (char c : line) if (c == '"') quoted = !quoted;
            if (quoted) continue;
            try { fields = csv_line(record); }
            catch (const std::exception& e) {
                throw std::runtime_error(path + ":" + std::to_string(record_start) + ": " + e.what());
            }
            return true;
        }
        if (in.bad()) throw std::runtime_error("CSV read failure: " + path);
        if (started)
            throw std::runtime_error(path + ":" + std::to_string(record_start) +
                                     ": unterminated CSV quote");
        return false;
    };
    std::vector<std::string> headers;
    if (!next_record(headers)) throw std::runtime_error("CSV input has no header: " + path);
    check_headers(headers);
    const auto width = headers.size();
    std::vector<std::string> row;
    while (next_record(row)) {
        if (row.size() != width)
            throw std::runtime_error("CSV row has a different number of fields at line " +
                                     std::to_string(record_start) + ": " + path);
        callback(headers, row, record_start);
    }
}

std::string json_escape(std::string_view s) {
    std::ostringstream out;
    out << '"';
    for (unsigned char c : s) {
        switch (c) {
        case '"': out << "\\\""; break;
        case '\\': out << "\\\\"; break;
        case '\b': out << "\\b"; break;
        case '\f': out << "\\f"; break;
        case '\n': out << "\\n"; break;
        case '\r': out << "\\r"; break;
        case '\t': out << "\\t"; break;
        default:
            if (c < 0x20)
                out << "\\u00" << std::hex << std::setw(2) << std::setfill('0')
                    << static_cast<unsigned>(c) << std::dec << std::setfill('0');
            else out << static_cast<char>(c);
        }
    }
    out << '"';
    return out.str();
}

std::string csv_json_array(const std::vector<std::string>& headers,
                           const std::vector<std::string>& row) {
    std::ostringstream out;
    out << '{';
    for (std::size_t i = 0; i < headers.size(); ++i) {
        if (i) out << ',';
        out << json_escape(headers[i]) << ':' << json_escape(row[i]);
    }
    out << '}';
    return out.str();
}

std::string string_array(const std::vector<std::string>& xs) {
    std::ostringstream out;
    out << '[';
    for (std::size_t i = 0; i < xs.size(); ++i) {
        if (i) out << ',';
        out << json_escape(xs[i]);
    }
    out << ']';
    return out.str();
}

bool contains_unknown(const std::string& value) {
    return value.find('?') != std::string::npos ||
           value.find("[NULL]") != std::string::npos ||
           value.find("possibly") != std::string::npos ||
           value.find("unknown") != std::string::npos;
}

std::vector<std::string> unknowns(const std::vector<std::string>& values) {
    std::vector<std::string> out;
    for (const auto& value : values) {
        if (value.find("[NULL]") != std::string::npos) out.push_back("[NULL]");
        if (value.find('?') != std::string::npos) out.push_back("?");
        if (value.find("possibly") != std::string::npos) out.push_back("possibly");
        if (value.find("unknown") != std::string::npos) out.push_back("unknown");
        if (value.empty()) out.push_back("empty");
    }
    std::sort(out.begin(), out.end());
    out.erase(std::unique(out.begin(), out.end()), out.end());
    return out;
}

// Small self-contained SHA-256 implementation.  Hashes are over the exact
// canonical JSON object before its sha256 field is appended.
class Sha256 {
    std::array<std::uint32_t, 8> h_{{
        0x6a09e667U, 0xbb67ae85U, 0x3c6ef372U, 0xa54ff53aU,
        0x510e527fU, 0x9b05688cU, 0x1f83d9abU, 0x5be0cd19U}};
    std::array<std::uint8_t, 64> block_{};
    std::uint64_t total_ = 0;
    std::size_t used_ = 0;
    static constexpr std::array<std::uint32_t, 64> k_{{
        0x428a2f98U,0x71374491U,0xb5c0fbcfU,0xe9b5dba5U,0x3956c25bU,0x59f111f1U,
        0x923f82a4U,0xab1c5ed5U,0xd807aa98U,0x12835b01U,0x243185beU,0x550c7dc3U,
        0x72be5d74U,0x80deb1feU,0x9bdc06a7U,0xc19bf174U,0xe49b69c1U,0xefbe4786U,
        0x0fc19dc6U,0x240ca1ccU,0x2de92c6fU,0x4a7484aaU,0x5cb0a9dcU,0x76f988daU,
        0x983e5152U,0xa831c66dU,0xb00327c8U,0xbf597fc7U,0xc6e00bf3U,0xd5a79147U,
        0x06ca6351U,0x14292967U,0x27b70a85U,0x2e1b2138U,0x4d2c6dfcU,0x53380d13U,
        0x650a7354U,0x766a0abbU,0x81c2c92eU,0x92722c85U,0xa2bfe8a1U,0xa81a664bU,
        0xc24b8b70U,0xc76c51a3U,0xd192e819U,0xd6990624U,0xf40e3585U,0x106aa070U,
        0x19a4c116U,0x1e376c08U,0x2748774cU,0x34b0bcb5U,0x391c0cb3U,0x4ed8aa4aU,
        0x5b9cca4fU,0x682e6ff3U,0x748f82eeU,0x78a5636fU,0x84c87814U,0x8cc70208U,
        0x90befffaU,0xa4506cebU,0xbef9a3f7U,0xc67178f2U}};
    static std::uint32_t rotr(std::uint32_t x, unsigned n) { return (x >> n) | (x << (32 - n)); }
    void transform() {
        std::array<std::uint32_t, 64> w{};
        for (unsigned i = 0; i < 16; ++i)
            w[i] = (std::uint32_t(block_[4*i]) << 24) | (std::uint32_t(block_[4*i+1]) << 16) |
                   (std::uint32_t(block_[4*i+2]) << 8) | std::uint32_t(block_[4*i+3]);
        for (unsigned i = 16; i < 64; ++i) {
            const auto s0 = rotr(w[i-15], 7) ^ rotr(w[i-15], 18) ^ (w[i-15] >> 3);
            const auto s1 = rotr(w[i-2], 17) ^ rotr(w[i-2], 19) ^ (w[i-2] >> 10);
            w[i] = w[i-16] + s0 + w[i-7] + s1;
        }
        auto a=h_[0], b=h_[1], c=h_[2], d=h_[3], e=h_[4], f=h_[5], g=h_[6], hh=h_[7];
        for (unsigned i = 0; i < 64; ++i) {
            const auto S1 = rotr(e,6)^rotr(e,11)^rotr(e,25);
            const auto ch = (e & f) ^ (~e & g);
            const auto temp1 = hh + S1 + ch + k_[i] + w[i];
            const auto S0 = rotr(a,2)^rotr(a,13)^rotr(a,22);
            const auto maj = (a & b) ^ (a & c) ^ (b & c);
            const auto temp2 = S0 + maj;
            hh=g; g=f; f=e; e=d+temp1; d=c; c=b; b=a; a=temp1+temp2;
        }
        h_[0]+=a; h_[1]+=b; h_[2]+=c; h_[3]+=d; h_[4]+=e; h_[5]+=f; h_[6]+=g; h_[7]+=hh;
    }
public:
    void update(std::string_view data) {
        total_ += data.size();
        for (auto c : data) {
            block_[used_++] = static_cast<std::uint8_t>(c);
            if (used_ == 64) { transform(); used_ = 0; }
        }
    }
    std::string finish() {
        const auto bits = total_ * 8;
        block_[used_++] = 0x80;
        if (used_ > 56) { while (used_ < 64) block_[used_++] = 0; transform(); used_ = 0; }
        while (used_ < 56) block_[used_++] = 0;
        for (int i = 7; i >= 0; --i) block_[used_++] = static_cast<std::uint8_t>(bits >> (8*i));
        transform();
        std::ostringstream out;
        for (auto x : h_) out << std::hex << std::setw(8) << std::setfill('0') << x;
        return out.str();
    }
};

std::string sha256(std::string_view s) { Sha256 x; x.update(s); return x.finish(); }

std::string sha256_file(const std::string& path) {
    std::ifstream in(path, std::ios::binary);
    if (!in) throw std::runtime_error("cannot hash input: " + path);
    Sha256 hash;
    std::array<char, 64 * 1024> buffer{};
    while (in.read(buffer.data(), buffer.size()) || in.gcount() != 0)
        hash.update(std::string_view(buffer.data(), static_cast<std::size_t>(in.gcount())));
    return hash.finish();
}

std::string basename(std::string path) {
    while (!path.empty() && (path.back() == '/' || path.back() == '\\')) path.pop_back();
    const auto slash = path.find_last_of("/\\");
    return slash == std::string::npos ? path : path.substr(slash + 1);
}

std::string hashed(std::string object) {
    if (object.empty() || object.back() != '}') throw std::runtime_error("internal JSON object error");
    const auto digest = sha256(object);
    object.pop_back();
    object += ",\"sha256\":" + json_escape(digest) + "}";
    return object;
}

void emit(std::ostream& out, const std::string& object) { out << hashed(object) << '\n'; }

void emit_header(std::ostream& out, const std::string& command, const std::string& source) {
    std::ostringstream x;
    x << "{\"record_type\":\"header\",\"schema\":\"lin-certificate/v1\","
      << "\"generator\":\"lin-cert-export/1.1.0\",\"command\":" << json_escape(command)
      << ",\"source_name\":" << json_escape(basename(source))
      << ",\"input_sha256\":" << json_escape(sha256_file(source))
      << ",\"canonical\":\"UTF-8 JSON objects, one per line, sorted source rows\","
      << "\"unknown_policy\":\"preserve (?/[NULL]/possibly); never coerce to zero\"}";
    emit(out, x.str());
}

std::string quote_or_empty(const std::vector<std::string>& row, std::size_t i) {
    return json_escape(i < row.size() ? row[i] : "");
}

void export_claims(const std::string& path, std::ostream& out) {
    emit_header(out, "claims", path);
    stream_csv(path, [&](const auto& h, const auto& row, std::size_t source_row) {
        if (h != std::vector<std::string>{"id", "section_or_location", "object",
            "input_or_condition", "output_or_conclusion", "source_tables", "status_for_formalization"})
            throw std::runtime_error("unexpected claims CSV schema");
        const auto unknown = unknowns(row);
        std::ostringstream x;
        x << "{\"record_type\":\"claim\",\"certificate_kind\":\"kervaire_claim\","
          << "\"source_row\":" << source_row << ","
          << "\"claim_id\":" << quote_or_empty(row,0)
          << ",\"section\":" << quote_or_empty(row,1)
          << ",\"object\":" << quote_or_empty(row,2)
          << ",\"input_or_condition\":" << quote_or_empty(row,3)
          << ",\"output_or_conclusion\":" << quote_or_empty(row,4)
          << ",\"source_tables\":";
        std::vector<std::string> tables;
        std::string t = row[5];
        std::stringstream ss(t);
        while (std::getline(ss,t,';')) if (!trim(t).empty()) tables.push_back(trim(t));
        x << string_array(tables)
          << ",\"status_for_formalization\":" << quote_or_empty(row,6)
          << ",\"unknown_markers\":" << string_array(unknown)
          << ",\"status\":" << json_escape(row[0].rfind("manual-", 0) == 0 ? "external_input" : "inventory_only")
          << ",\"semantic_status\":\"textual_claim; Lean certificate required\"}";
        emit(out, x.str());
    });
}

void export_proofs(const std::string& path, std::ostream& out) {
    emit_header(out, "proof-records", path);
    stream_csv(path, [&](const auto& h, const auto& row, std::size_t source_row) {
        const auto unknown = unknowns(row);
        bool has = !unknown.empty();
        for (const auto& x : row) has = has || contains_unknown(x);
        const auto reason = std::find(h.begin(), h.end(), "reason");
        const bool external = reason != h.end() && row[reason - h.begin()] == "M";
        std::ostringstream x;
        x << "{\"record_type\":\"proof_event\",\"certificate_kind\":\"ss_proof_row\","
          << "\"source_row\":" << source_row << ","
          << "\"fields\":" << csv_json_array(h,row)
          << ",\"status\":" << json_escape(external ? "external_input" : has ? "unknown" : "computed")
          << ",\"unknown_markers\":" << string_array(unknown)
          << ",\"semantic_status\":\"archive_only; propagation rule checker not implemented\"}";
        emit(out, x.str());
    });
}

void export_adams(const std::string& path, std::ostream& out) {
    emit_header(out, "adams-table", path);
    stream_csv(path, [&](const auto& h, const auto& row, std::size_t source_row) {
        const auto unknown = unknowns(row);
        std::ostringstream x;
        x << "{\"record_type\":\"adams_row\",\"certificate_kind\":\"adams_export\","
          << "\"source_row\":" << source_row << ","
          << "\"fields\":" << csv_json_array(h,row)
          << ",\"status\":" << json_escape(unknown.empty() ? "computed" : "unknown")
          << ",\"unknown_markers\":" << string_array(unknown)
          << ",\"semantic_status\":\"archive_only; explicit finite normalization required\"}";
        emit(out, x.str());
    });
}

const std::vector<std::string> spectra = {
    "S0","tmf","C2","Ceta","Cnu","Csigma","CW_2_eta","CW_eta_2",
    "CW_eta_nu","CW_nu_eta","CW_sigma_nu","CW_nu_sigma","CW_2_eta_nu",
    "CW_nu_eta_2","CW_sigma_nu_eta","CW_eta_nu_sigma","CW_sigma_nu_eta_2",
    "CW_2_eta_nu_sigma","Csigmasq","C2h4","DC2h4","Ctheta4","C2h5",
    "DC2h5","Ctheta5","C2h6","DC2h6","C2_C2","Ceta_Ceta","Cnu_Cnu",
    "Csigma_Csigma","CW_2sigma_sigma","CW_sigma_2sigma","C2sigma",
    "CW_2_V_eta","CW_2_A_eta","Joker","CW_eta_2_eta_Eq_2_nu",
    "CW_eta_2_eta_Eq_nu_2","C2_Ceta","RP3_6","Fphi","RP1_4","RP1_6",
    "RP1_8","RP1_10","RP1_12","RP1_256","RP3_256"};

void export_manifest(std::ostream& out) {
    const std::string source = std::ifstream("../doc_data/kervaire_program_inventory.json") ?
        "../doc_data/kervaire_program_inventory.json" : "doc_data/kervaire_program_inventory.json";
    emit_header(out, "manifest", source);
    std::ostringstream summary;
    summary << "{\"record_type\":\"dataset_summary\",\"certificate_kind\":\"inventory\","
            << "\"spectra_count\":49,\"maps_count\":180,\"cofiber_sequences_count\":61,"
            << "\"proof_record_fields\":[\"id\",\"depth\",\"reason\",\"name\",\"stem\",\"s\",\"t\",\"r\",\"x\",\"dx\",\"info\"],"
            << "\"status\":\"inventory_only\",\"semantic_status\":\"not a computed mathematical result\"}";
    emit(out, summary.str());
    for (std::size_t i = 0; i < spectra.size(); ++i) {
        std::ostringstream x;
        x << "{\"record_type\":\"object\",\"certificate_kind\":\"spectrum_input\","
          << "\"ordinal\":" << (i+1) << ",\"name\":" << json_escape(spectra[i])
          << ",\"status\":\"inventory_only\",\"semantic_status\":\"requires Adams export\"}";
        emit(out, x.str());
    }
    for (unsigned i = 1; i <= 180; ++i) {
        std::ostringstream x;
        x << "{\"record_type\":\"object\",\"certificate_kind\":\"spectrum_map\","
          << "\"ordinal\":" << i << ",\"name\":\"map-" << std::setw(4) << std::setfill('0') << i
          << "\",\"status\":\"inventory_only\",\"semantic_status\":\"requires Adams map export\"}";
        emit(out, x.str());
    }
    for (unsigned i = 1; i <= 61; ++i) {
        std::ostringstream x;
        x << "{\"record_type\":\"object\",\"certificate_kind\":\"cofiber_sequence\","
          << "\"ordinal\":" << i << ",\"name\":\"cofiber-" << std::setw(4) << std::setfill('0') << i
          << "\",\"status\":\"inventory_only\",\"semantic_status\":\"requires ss category export\"}";
        emit(out, x.str());
    }
    const std::vector<std::string> manual = {
        "d5(h0^24 h6)=h0^2 P^6 d0 in S0",
        "d6(h0^55 h7)=h0^2 x126,60 in S0",
        "d3(v2^16)=beta^5 g in tmf"};
    for (std::size_t i = 0; i < manual.size(); ++i) {
        std::ostringstream x;
        x << "{\"record_type\":\"manual_input\",\"certificate_kind\":\"external_differential\","
          << "\"ordinal\":" << (i+1) << ",\"statement\":" << json_escape(manual[i])
          << ",\"status\":\"external_input\",\"semantic_status\":\"requires cited theorem certificate\"}";
        emit(out, x.str());
    }
}

void usage() {
    std::cerr << "usage: lin-cert-export <claims|proofs|adams|finite> INPUT.csv [OUTPUT.jsonl]\n"
              << "       lin-cert-export manifest [OUTPUT.jsonl]\n"
              << "       lin-cert-export self-test\n";
}

std::string nat(const std::string& s) {
    if (s.empty() || s.find_first_not_of("0123456789") != std::string::npos ||
        (s.size() > 1 && s.front() == '0'))
        throw std::runtime_error("expected canonical natural number: " + s);
    return s;
}

// Explicit finite input schema; raw Adams/proof rows are never guessed into it.
void export_finite(const std::string& path, std::ostream& out) {
    const auto rows = read_csv(path);
    if (rows.front() != std::vector<std::string>{"object","kind","a","b","c","d"})
        throw std::runtime_error("finite header must be object,kind,a,b,c,d");
    std::string object;
    std::vector<std::string> classes, diffs, certs;
    auto array = [](const auto& xs) {
        std::string s = "[";
        for (const auto& x : xs) { if (s.size() > 1) s += ','; s += x; }
        return s + ']';
    };
    auto differential = [](const auto& r) {
        return "{\"page\":" + nat(r[2]) + ",\"source\":" + nat(r[3]) +
               ",\"target\":" + nat(r[4]) + "}";
    };
    for (std::size_t i = 1; i < rows.size(); ++i) {
        const auto& r = rows[i];
        if (object.empty()) object = r[0];
        if (object.empty() || object != r[0]) throw std::runtime_error("finite: object mismatch");
        const auto& k = r[1];
        if (k == "class") {
            classes.push_back("{\"degree\":{\"filtration\":" + nat(r[4]) +
                ",\"internal\":" + nat(r[5]) + "},\"id\":" + nat(r[2]) +
                ",\"name\":" + json_escape(r[3]) + "}");
            continue;
        }
        if (k == "diff") { diffs.push_back(differential(r)); continue; }
        std::string claim, evidence;
        if (k == "notHit") {
            claim = "{\"notHit\":{\"classId\":" + nat(r[2]) + ",\"first\":" + nat(r[3]) +
                    ",\"last\":" + nat(r[4]) + "}}";
            evidence = "{\"incoming\":{\"records\":[]}}";
        } else if (k == "survives") {
            claim = "{\"survives\":{\"classId\":" + nat(r[2]) + ",\"page\":" + nat(r[3]) + "}}";
            evidence = "{\"incoming\":{\"records\":[]}}";
        } else if (k == "permanent") {
            claim = "{\"permanent\":{\"classId\":" + nat(r[2]) + "}}";
            evidence = "{\"permanent\":{\"records\":[]}}";
        } else if (k == "differential") {
            claim = "{\"differential\":{\"record\":" + differential(r) + "}}";
            evidence = claim;
        } else if (k == "uniqueSurvivor") {
            std::vector<std::string> candidates, eliminated;
            std::stringstream input(r[3]);
            std::string id;
            while (std::getline(input, id, ';')) {
                candidates.push_back(nat(id));
                if (id != r[2]) eliminated.push_back(id);
            }
            claim = "{\"uniqueSurvivor\":{\"candidates\":" + array(candidates) +
                    ",\"survivor\":" + nat(r[2]) + "}}";
            evidence = "{\"unique\":{\"eliminated\":" + array(eliminated) + "}}";
        } else if (k == "ruledOut") {
            claim = "{\"ruledOut\":{\"ruledOut\":" + nat(r[3]) + ",\"stem\":" + nat(r[2]) +
                    ",\"total\":" + nat(r[4]) + "}}";
            evidence = "{\"count\":{\"ruledOut\":" + nat(r[3]) + ",\"total\":" + nat(r[4]) + "}}";
        } else throw std::runtime_error("finite line " + std::to_string(i+1) + ": unsupported kind " + k);
        certs.push_back("{\"claim\":" + claim + ",\"evidence\":" + evidence +
                        ",\"object\":" + json_escape(object) + ",\"version\":1}");
    }
    out << "{\"bundle\":{\"certificates\":" << array(certs) << ",\"data\":{\"classes\":"
        << array(classes) << ",\"differentials\":" << array(diffs) << ",\"object\":"
        << json_escape(object) << "},\"formatVersion\":1},\"schema\":\"lin-finite-bundle/v1\","
        << "\"status\":\"finite_input\"}\n";
}

int run(int argc, char** argv) {
    if (argc < 2) { usage(); return 2; }
    const std::string mode = argv[1];
    if (mode == "self-test") {
        if (sha256("abc") != "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad")
            throw std::runtime_error("SHA-256 self-test failed");
        if (csv_line("a,\"b,c\",d").at(1) != "b,c") throw std::runtime_error("CSV self-test failed");
        std::cout << "lin-cert-export self-test: ok\n";
        return 0;
    }
    std::string input, output;
    if (mode == "manifest") {
        if (argc >= 3) output = argv[2];
    } else {
        if (argc < 3) { usage(); return 2; }
        input = argv[2];
        if (argc >= 4) output = argv[3];
    }
    std::ofstream file;
    std::ostream* out = &std::cout;
    if (!output.empty()) { file.open(output); if (!file) throw std::runtime_error("cannot open output: " + output); out = &file; }
    if (mode == "claims") export_claims(input, *out);
    else if (mode == "finite") export_finite(input, *out);
    else if (mode == "proofs") export_proofs(input, *out);
    else if (mode == "adams") export_adams(input, *out);
    else if (mode == "manifest") export_manifest(*out);
    else { usage(); return 2; }
    return 0;
}
}

int main(int argc, char** argv) {
    try { return run(argc, argv); }
    catch (const std::exception& e) { std::cerr << "lin-cert-export: " << e.what() << '\n'; return 1; }
}
