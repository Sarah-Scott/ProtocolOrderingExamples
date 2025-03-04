Require Import AttestationProtocolOrdering.attacktree.
Require Import AttestationProtocolOrdering.set_relationship.

Require Import ProtocolOrderingExamples.components.
Require Import ProtocolOrderingExamples.VcSys.
Require Import ProtocolOrderingExamples.KerVcSys.



Eval compute in (order_fix VcSys KerVcSys).
