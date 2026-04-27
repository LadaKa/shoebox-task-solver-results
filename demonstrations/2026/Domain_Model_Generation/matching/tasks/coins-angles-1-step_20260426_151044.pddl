(define (domain polygon-number-sort)
  (:requirements :strips :typing)
  (:types token slot)

  (:predicates
    (at ?t - token ?s - slot)
    (empty ?s - slot)
    (fits ?t - token ?s - slot)
  )

  (:action move-token
    :parameters (?t - token ?from - slot ?to - slot)
    :precondition (and
      (at ?t ?from)
      (empty ?to)
      (fits ?t ?to)
    )
    :effect (and
      (not (at ?t ?from))
      (empty ?from)
      (at ?t ?to)
      (not (empty ?to))
    )
  )

  (:action remove-token
    :parameters (?t - token ?s - slot)
    :precondition (and
      (at ?t ?s)
    )
    :effect (and
      (not (at ?t ?s))
      (empty ?s)
    )
  )

  (:action place-token
    :parameters (?t - token ?s - slot)
    :precondition (and
      (empty ?s)
    )
    :effect (and
      (at ?t ?s)
      (not (empty ?s))
    )
  )

  ; Tokens are polygon discs; slots are wells/positions including numbered goals 3,4,6.
  ; fits(t,s) encodes correct polygon-to-number matching by side count.
  ; move-token is the high-level action to slide/place a token into its matching empty goal slot.
)