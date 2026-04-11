(define (domain shoebox-arithmetic)
  (:requirements :strips :typing)
  
  (:types item init_container target slot)

  (:predicates
    (in_init_container ?x - item)

    ;; item is placed into a specific target
    (in_target ?x - item ?y - target)

    ;; structure of capacity system
    (belongs ?s - slot ?y - target)

    ;; slot state
    (slot_free ?s - slot)
    (slot_occupied ?s - slot)
  )

  ;; initialize item back into container
  (:action move_to_init_container
    :parameters (?x - item ?y - target)
    :precondition (in_target ?x ?y)
    :effect (and
      (in_init_container ?x)
      (not (in_target ?x ?y))
    )
  )

  ;; move item into a target using one available slot
  (:action move_to_target
    :parameters (?x - item ?y - target ?s - slot)
    :precondition (and
      (in_init_container ?x)
      (belongs ?s ?y)
      (slot_free ?s)
    )
    :effect (and
      (not (in_init_container ?x))
      (slot_occupied ?s)
      (not (slot_free ?s))
      (in_target ?x ?y)
    )
  )
)

