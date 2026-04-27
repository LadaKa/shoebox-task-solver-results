(define (domain shape-sort)
  (:requirements :strips :typing)
  (:types piece slot kind)

  (:predicates
    (handempty)
    (holding ?p - piece)
    (ontable ?p - piece)
    (in ?s - slot ?p - piece)
    (free ?s - slot)
    (ofkind ?p - piece ?k - kind)
    (accepts ?s - slot ?k - kind)
  )

  (:action pick-from-slot
    :parameters (?p - piece ?s - slot)
    :precondition (and (in ?s ?p) (handempty))
    :effect (and
      (holding ?p)
      (not (handempty))
      (free ?s)
      (not (in ?s ?p))
    )
  )

  (:action pick-from-table
    :parameters (?p - piece)
    :precondition (and (ontable ?p) (handempty))
    :effect (and
      (holding ?p)
      (not (handempty))
      (not (ontable ?p))
    )
  )

  (:action place-in-slot
    :parameters (?p - piece ?s - slot ?k - kind)
    :precondition (and
      (holding ?p)
      (free ?s)
      (ofkind ?p ?k)
      (accepts ?s ?k)
    )
    :effect (and
      (in ?s ?p)
      (handempty)
      (not (holding ?p))
      (not (free ?s))
    )
  )

  (:action drop-to-table
    :parameters (?p - piece)
    :precondition (holding ?p)
    :effect (and
      (ontable ?p)
      (handempty)
      (not (holding ?p))
    )
  )

  ; Pieces are wooden discs or plastic frames (type piece).
  ; Kinds represent shapes: circle, triangle, square, diamond (type kind).
  ; Slots are board positions that accept one matching kind (accepts).
  ; Goal states can encode the target layout shown by reference tokens.
)