(define (domain numbered-trays-sorting)
  (:requirements :strips :typing)
  (:types block bin)
  (:predicates
    (free ?x - block)
    (in ?x - block ?b - bin)
    (rem0 ?b - bin)
    (rem1 ?b - bin)
    (rem2 ?b - bin)
    (rem3 ?b - bin)
  )

  (:action place-into-tray-when-rem3
    :parameters (?x - block ?b - bin)
    :precondition (and (free ?x) (rem3 ?b))
    :effect (and
      (in ?x ?b)
      (rem2 ?b)
      (not (rem3 ?b))
      (not (free ?x))
    )
  )

  (:action place-into-tray-when-rem2
    :parameters (?x - block ?b - bin)
    :precondition (and (free ?x) (rem2 ?b))
    :effect (and
      (in ?x ?b)
      (rem1 ?b)
      (not (rem2 ?b))
      (not (free ?x))
    )
  )

  (:action place-into-tray-when-rem1
    :parameters (?x - block ?b - bin)
    :precondition (and (free ?x) (rem1 ?b))
    :effect (and
      (in ?x ?b)
      (rem0 ?b)
      (not (rem1 ?b))
      (not (free ?x))
    )
  )

  (:action remove-from-tray-when-rem0
    :parameters (?x - block ?b - bin)
    :precondition (and (in ?x ?b) (rem0 ?b))
    :effect (and
      (free ?x)
      (rem1 ?b)
      (not (rem0 ?b))
      (not (in ?x ?b))
    )
  )

  (:action remove-from-tray-when-rem1
    :parameters (?x - block ?b - bin)
    :precondition (and (in ?x ?b) (rem1 ?b))
    :effect (and
      (free ?x)
      (rem2 ?b)
      (not (rem1 ?b))
      (not (in ?x ?b))
    )
  )

  (:action remove-from-tray-when-rem2
    :parameters (?x - block ?b - bin)
    :precondition (and (in ?x ?b) (rem2 ?b))
    :effect (and
      (free ?x)
      (rem3 ?b)
      (not (rem2 ?b))
      (not (in ?x ?b))
    )
  )

  ; Sorting wooden blocks into numbered trays (1, 2, 3).
  ; remk(b) = k remaining spots in tray b to match its label.
  ; place-into-tray-* consumes one remaining spot and fixes the block.
  ; remove-from-tray-* frees a block and restores one remaining spot.
)