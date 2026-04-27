(define (domain token-sorting)
  (:requirements :strips :typing)
  (:types robot token bin slot)

  (:predicates
    (handfree ?r - robot)
    (holding ?r - robot ?t - token)
    (ontray ?t - token)
    (in-slot ?t - token ?s - slot)
    (slot-empty ?s - slot)
    (slot-of ?s - slot ?b - bin)
  )

  (:action pick-from-tray
    :parameters (?r - robot ?t - token)
    :precondition (and
      (handfree ?r)
      (ontray ?t)
    )
    :effect (and
      (holding ?r ?t)
      (not (handfree ?r))
      (not (ontray ?t))
    )
  )

  (:action place-to-slot
    :parameters (?r - robot ?t - token ?s - slot ?b - bin)
    :precondition (and
      (holding ?r ?t)
      (slot-empty ?s)
      (slot-of ?s ?b)
    )
    :effect (and
      (in-slot ?t ?s)
      (not (slot-empty ?s))
      (handfree ?r)
      (not (holding ?r ?t))
    )
  )

  (:action pick-from-slot
    :parameters (?r - robot ?t - token ?s - slot ?b - bin)
    :precondition (and
      (handfree ?r)
      (in-slot ?t ?s)
      (slot-of ?s ?b)
    )
    :effect (and
      (holding ?r ?t)
      (slot-empty ?s)
      (not (in-slot ?t ?s))
      (not (handfree ?r))
    )
  )

  (:action drop-to-tray
    :parameters (?r - robot ?t - token)
    :precondition (and
      (holding ?r ?t)
    )
    :effect (and
      (ontray ?t)
      (handfree ?r)
      (not (holding ?r ?t))
    )
  )

  ; Robot picks tokens from a central tray and deposits them into bin-specific slots.
  ; Each slot represents one required token for its bin; filling all slots completes sorting.
  ; Actions allow picking from tray, placing into a bin’s slot, undoing by picking from a slot, and dropping back to tray.
)