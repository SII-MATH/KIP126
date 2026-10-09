import Lean

namespace LinProgramCertificates

/-!
## 稳定文本格式

外部程序（例如 C++）输出 UTF-8 文本，而不是把 C++ 运行时引入 Lean 内核。
格式固定为：

```
lin-certificate-v1
kind=<identifier>
input=<canonical payload>
output=<canonical payload>
proof=<canonical witness>
```

每个字段至多出现一次；字段值不得含换行。`proof` 的解释留给具体 checker。
解析器只负责语法，不把字符串自动提升为数学命题。
-/

/-- 解析失败的位置和可读消息。`line` 从 1 开始。 -/
structure ParseError where
  line : Nat
  message : String
  deriving Repr, DecidableEq

/-- 已解析的、尚未赋予具体数学语义的证书记录。 -/
structure TextCertificate where
  version : Nat
  kind : String
  input : String
  output : String
  proof : String
  deriving Repr, DecidableEq

private def lineError (line : Nat) (message : String) : Except ParseError α :=
  .error ⟨line, message⟩

private def parseVersion (lineNo : Nat) (line : String) : Except ParseError Nat :=
  if line == "lin-certificate-v1" then
    .ok 1
  else
    lineError lineNo "expected header `lin-certificate-v1`"

private def splitField (lineNo : Nat) (line : String) : Except ParseError (String × String) :=
  match line.splitOn "=" with
  | [key, value] =>
      if key.isEmpty then lineError lineNo "empty field name"
      else if value.contains '\n' then lineError lineNo "field value contains a newline"
      else .ok (key, value)
  | _ => lineError lineNo "expected exactly one `=` in a field"

private structure Fields where
  kind : Option String := none
  input : Option String := none
  output : Option String := none
  proof : Option String := none

private def updateField (lineNo : Nat) (field : String) (value : String)
    (state : Fields) : Except ParseError Fields :=
  let duplicate (name : String) := lineError lineNo ("duplicate field `" ++ name ++ "`")
  match field with
  | "kind" => match state.kind with | some _ => duplicate "kind" | none => .ok { state with kind := some value }
  | "input" => match state.input with | some _ => duplicate "input" | none => .ok { state with input := some value }
  | "output" => match state.output with | some _ => duplicate "output" | none => .ok { state with output := some value }
  | "proof" => match state.proof with | some _ => duplicate "proof" | none => .ok { state with proof := some value }
  | _ => lineError lineNo ("unknown field `" ++ field ++ "`")

private def requireField (lineNo : Nat) (name : String) : Option String → Except ParseError String
  | none => lineError lineNo ("missing field `" ++ name ++ "`")
  | some value => if value.isEmpty then lineError lineNo ("empty field `" ++ name ++ "`") else .ok value

/-- Parse a canonical certificate.  It is executable and reports the first bad line. -/
def parseTextCertificate (text : String) : Except ParseError TextCertificate := do
  let lines := text.splitOn "\n"
  match lines with
  | [] => lineError 1 "empty certificate"
  | header :: rest =>
      let version ← parseVersion 1 header
      let mut state : Fields := {}
      let mut lineNo := 2
      for line in rest do
        if line.isEmpty then
          lineNo := lineNo + 1
        else
          let (field, value) ← splitField lineNo line
          state ← updateField lineNo field value state
          lineNo := lineNo + 1
      let kind ← requireField lineNo "kind" state.kind
      let input ← requireField lineNo "input" state.input
      let output ← requireField lineNo "output" state.output
      let proof ← requireField lineNo "proof" state.proof
      .ok { version, kind, input, output, proof }

/-- Canonical serializer; round-tripping gives a reproducible external format. -/
def TextCertificate.serialize (c : TextCertificate) : String :=
  "lin-certificate-v1\n" ++
  "kind=" ++ c.kind ++ "\n" ++
  "input=" ++ c.input ++ "\n" ++
  "output=" ++ c.output ++ "\n" ++
  "proof=" ++ c.proof ++ "\n"

/-- A checked import must carry a semantic decoder supplied by the concrete checker. -/
structure ImportedCertificate (α : Type) where
  parsed : TextCertificate
  value : α
  decodingCorrect : Prop

end LinProgramCertificates
