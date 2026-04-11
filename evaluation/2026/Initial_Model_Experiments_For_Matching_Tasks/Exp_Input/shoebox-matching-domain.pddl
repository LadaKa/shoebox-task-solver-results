(define (domain shoebox-simple)
  (:requirements :strips :typing)
  (:types item init_container target)

  (:predicates
    (in_init_container ?x - item)
    (in_target ?x - item ?y - target)
    (free ?x - target)           ; one object in each target
  )

  (:action move_to_init_container
    :parameters (?x - item)
    :precondition (not (in_init_container ?x))
    :effect (in_init_container ?x)
  )

  (:action move_to_target
    :parameters (?x - item ?y - target)
    :precondition (and (in_init_container ?x)
                       (free ?y))
    :effect (and (not (in_init_container ?x))
                 (not (free ?y))
                 (in_target ?x ?y))
  )
)
