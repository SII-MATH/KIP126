# Indexed finite event wrapper

Indexed.Wire wraps the existing executable event data with source/target
bidegrees, event page r, and one label per earlier source/target stage.
The checker requires r>=2; both stage counts equal r-2; labels have pages
2,3,...,r-1 and the corresponding fixed endpoint center. Incoming and
outgoing labels satisfy the Adams arithmetic degree shifts. The event
target is source+(r,r-1). check_sound proves IndexedShape together with
the entire existing executable finite-event validity.

The strict indexed_event% importer rejects unknown/duplicate nested fields
and arithmetic/count errors. lin_cert using () checks labels and finite
algebra. IndexedExamples rejects altered event page, missing labels,
wrong target degree, and deletion of the previously optional identity
source path. Unlike the ungraded checker, the indexed wrapper fixes the
number of earlier stages.

All degree components are Nat. Therefore an incoming label requires a
nonnegative source filtration; all87 actual fixtures satisfy this domain
restriction. Negative-degree groups are not silently replaced by zero.
A future extension covering such groups should use explicit signed degrees
and zero-object evidence rather than truncated natural subtraction.

The labels attach to stage matrices by list position only. This proves
arithmetic indexing/composability, not that a matrix belongs to a globally
defined bigraded Adams family. No global differential square, database
semantics, or topology follows solely from labels. The independent raw
provenance audit checks the actual87 degree/matrix associations against
existing data; their mathematical identification remains an input premise.

generate_indexed.py and review_indexed.py preserve all87 event IDs, raw
finite data and conditional obligations, verify all labels/counts and
byte-stable regeneration. IndexedBatch0..8 contain actual lin_cert checks.
Register AggregateTargetInventory.EventAudit.IndexedAll and IndexedExamples.
The existing ungraded wire semantics were not modified.

The C++ indexed producer output FiniteEventProducer/indexed87.jsonl is
byte-identical to all87 imported wrapper files; review_indexed.py checks
this correspondence. Indexed, all9 batches, IndexedAll and four tamper
examples passed serial direct Lean -j1 compilation. check_sound uses only
propext and Quot.sound. No sorry, new axiom or native_decide is added.
