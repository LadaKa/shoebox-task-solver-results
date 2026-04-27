(define (domain peg-shape-sorting)
  (:requirements :strips :typing)
  (:types piece peg)
  (:predicates
    (in-bowl ?x - piece)
    (on-peg ?x - piece ?g - peg)
    (peg-empty ?g - peg)
    (holding ?x - piece)
    (hand-free)
    (matches ?x - piece ?g - peg)
  )

  (:action pick-from-bowl
    :parameters (?x - piece)
    :precondition (and (in-bowl ?x) (hand-free))
    :effect (and (holding ?x) (not (in-bowl ?x)) (not (hand-free)))
  )

  (:action place-on-peg
    :parameters (?x - piece ?g - peg)
    :precondition (and (holding ?x) (peg-empty ?g) (matches ?x ?g))
    :effect (and (on-peg ?x ?g) (hand-free) (not (holding ?x)) (not (peg-empty ?g)))
  )

  (:action take-from-peg
    :parameters (?x - piece ?g - peg)
    :precondition (and (on-peg ?x ?g) (hand-free))
    :effect (and (holding ?x) (peg-empty ?g) (not (on-peg ?x ?g)) (not (hand-free)))
  )

  (:action drop-to-bowl
    :parameters (?x - piece)
    :precondition (holding ?x)
    :effect (and (in-bowl ?x) (hand-free) (not (holding ?x)))
  )

  ; Task: sort shape pieces by placing each onto the peg with the matching icon (circle, triangle, square).
  ; matches(piece, peg) is static and provided in the problem; each peg holds at most one piece (peg-empty).
  ; The agent has one hand represented by hand-free / holding.
)