(define (domain color-sort)
  (:requirements :strips :typing)
  (:types ball cup color)

  (:predicates
    (in ?b - ball ?c - cup)
    (labeled ?c - cup ?col - color)
    (has-color ?b - ball ?col - color)
    (sorted ?b - ball)
  )

  (:action move
    :parameters (?b - ball ?from - cup ?to - cup)
    :precondition (and
      (in ?b ?from)
    )
    :effect (and
      (not (in ?b ?from))
      (in ?b ?to)
      (not (sorted ?b))
    )
  )

  (:action place-to-matching-cup
    :parameters (?b - ball ?from - cup ?to - cup ?col - color)
    :precondition (and
      (in ?b ?from)
      (labeled ?to ?col)
      (has-color ?b ?col)
    )
    :effect (and
      (not (in ?b ?from))
      (in ?b ?to)
      (sorted ?b)
    )
  )

  ; Domain models sorting colored pom-poms into color-labeled cups.
  ; move: relocate a ball anywhere (clears its sorted status).
  ; place-to-matching-cup: move a ball into a cup labeled with its color and mark it sorted.
)