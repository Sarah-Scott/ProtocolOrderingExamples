Require Import AttestationProtocolOrdering.attacktree.
Require Import ProtocolOrderingExamples.components.

Definition A0 : attacktree components := 
{|
	event := 
		nat ;
	edges :=
		(6,0) :: (5,0) :: (4,1) :: (1,6) :: (1,2) :: (3,4) :: (2,0) :: nil ;
	label := fun ev =>
		match ev with
		| 0 => inl (msp _ vc sys)
		| 6 => inr (cor _ vc)
		| 5 => inr (cor _ sys)
		| 4 => inl (msp _ rtm a2)
		| 1 => inl (msp _ a1 vc)
		| 2 => inl (msp _ a2 ker)
		| 3 => inl (msp _ rtm a1)
		| _ => inl (ms _)
		end ;
	eqDec_event := 
		ltac:(decide equality) ;
	eqDec_component := 
		eqDec_components
|}.

Definition A1 : attacktree components := 
{|
	event := 
		nat ;
	edges :=
		(6,0) :: (4,1) :: (1,2) :: (3,4) :: (2,6) :: (5,0) :: nil ;
	label := fun ev =>
		match ev with
		| 0 => inl (msp _ vc sys)
		| 6 => inr (cor _ ker)
		| 4 => inl (msp _ rtm a2)
		| 1 => inl (msp _ a1 vc)
		| 2 => inl (msp _ a2 ker)
		| 3 => inl (msp _ rtm a1)
		| 5 => inr (cor _ sys)
		| _ => inl (ms _)
		end ;
	eqDec_event := 
		ltac:(decide equality) ;
	eqDec_component := 
		eqDec_components
|}.

Definition A2 : attacktree components := 
{|
	event := 
		nat ;
	edges :=
		(6,1) :: (1,2) :: (5,0) :: (4,1) :: (7,1) :: (3,4) :: (3,7) :: (2,0) :: nil ;
	label := fun ev =>
		match ev with
		| 0 => inl (msp _ vc sys)
		| 6 => inr (cor _ vc)
		| 1 => inl (msp _ a1 vc)
		| 2 => inl (msp _ a2 ker)
		| 5 => inr (cor _ sys)
		| 4 => inl (msp _ rtm a2)
		| 7 => inr (cor _ a1)
		| 3 => inl (msp _ rtm a1)
		| _ => inl (ms _)
		end ;
	eqDec_event := 
		ltac:(decide equality) ;
	eqDec_component := 
		eqDec_components
|}.

Definition A3 : attacktree components := 
{|
	event := 
		nat ;
	edges :=
		(6,2) :: (2,0) :: (4,1) :: (4,7) :: (1,2) :: (7,2) :: (3,4) :: (5,0) :: nil ;
	label := fun ev =>
		match ev with
		| 0 => inl (msp _ vc sys)
		| 6 => inr (cor _ ker)
		| 2 => inl (msp _ a2 ker)
		| 4 => inl (msp _ rtm a2)
		| 1 => inl (msp _ a1 vc)
		| 7 => inr (cor _ a2)
		| 3 => inl (msp _ rtm a1)
		| 5 => inr (cor _ sys)
		| _ => inl (ms _)
		end ;
	eqDec_event := 
		ltac:(decide equality) ;
	eqDec_component := 
		eqDec_components
|}.

Definition S4 : list (attacktree components) := 
	A0 :: A1 :: A2 :: A3 :: nil.
