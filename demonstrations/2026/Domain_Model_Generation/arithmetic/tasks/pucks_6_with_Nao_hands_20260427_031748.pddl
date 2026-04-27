(define (domain token-sorting)
  (:requirements :strips :typing)
  (:types token tray bin slot)
  (:predicates
    (on-tray ?t - token ?tr - tray)
    (in-slot ?t - token ?s - slot)
    (empty ?s - slot)
    (occupied ?s - slot)
    (slot-of ?s - slot ?b - bin)
  )

  (:action move-to-slot
    :parameters (?t - token ?tr - tray ?s - slot ?b - bin)
    :precondition (and
      (on-tray ?t ?tr)
      (empty ?s)
      (slot-of ?s ?b)
    )
    :effect (and
      (in-slot ?t ?s)
      (occupied ?s)
      (not (on-tray ?t ?tr))
      (not (empty ?s))
    )
  )

  (:action return-to-tray
    :parameters (?t - token ?tr - tray ?s - slot ?b - bin)
    :precondition (and
      (in-slot ?t ?s)
      (slot-of ?s ?b)
    )
    :effect (and
      (on-tray ?t ?tr)
      (empty ?s)
      (not (in-slot ?t ?s))
      (not (occupied ?s))
    )
  )

  (:action move-slot-to-slot
    :parameters (?t - token ?s1 - slot ?s2 - slot ?b1 - bin ?b2 - bin)
    :precondition (and
      (in-slot ?t ?s1)
      (slot-of ?s1 ?b1)
      (empty ?s2)
      (slot-of ?s2 ?b2)
    )
    :effect (and
      (in-slot ?t ?s2)
      (occupied ?s2)
      (empty ?s1)
      (not (in-slot ?t ?s1))
      (not (occupied ?s1))
      (not (empty ?s2))
    )
  )

  ; Tokens are distributed from a central tray to numbered bins.
  ; Each bin is modeled by a set of slots equal to its label (e.g., 1,2,3).
  ; Goal in the problem: all required slots are occupied by tokens.
)