(define (domain token-bins)
  (:requirements :strips :typing)
  (:types token box slot)

  (:predicates
    (on-tray ?t - token)
    (in-slot ?t - token ?s - slot)
    (slot-of ?s - slot ?b - box)
    (empty ?s - slot)
    (holding ?t - token)
    (handempty)
  )

  (:action take-from-tray
    :parameters (?t - token)
    :precondition (and (on-tray ?t) (handempty))
    :effect (and
      (holding ?t)
      (not (on-tray ?t))
      (not (handempty))
    )
  )

  (:action place-into-slot
    :parameters (?t - token ?s - slot ?b - box)
    :precondition (and
      (holding ?t)
      (slot-of ?s ?b)
      (empty ?s)
    )
    :effect (and
      (in-slot ?t ?s)
      (not (holding ?t))
      (handempty)
      (not (empty ?s))
    )
  )

  (:action take-from-slot
    :parameters (?t - token ?s - slot ?b - box)
    :precondition (and
      (handempty)
      (in-slot ?t ?s)
      (slot-of ?s ?b)
    )
    :effect (and
      (holding ?t)
      (not (handempty))
      (empty ?s)
      (not (in-slot ?t ?s))
    )
  )

  (:action drop-to-tray
    :parameters (?t - token)
    :precondition (and
      (holding ?t)
    )
    :effect (and
      (on-tray ?t)
      (handempty)
      (not (holding ?t))
    )
  )

  ; High-level sorting/counting domain for placing tokens into numbered boxes.
  ; Box capacities are modeled by explicit slot objects; a token can be placed only in an empty slot of a box.
  ; A single hand moves tokens between the tray and box slots; goals specify which slots should be filled.
)