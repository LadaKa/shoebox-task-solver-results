(define (domain color-sort-board)
  (:requirements :strips :typing)

  (:types
    tile hole color
  )

  (:predicates
    (color-of ?t - tile ?c - color)
    (hole-for ?h - hole ?c - color)
    (empty ?h - hole)
    (in-hole ?t - tile ?h - hole)
    (on-tray ?t - tile)
    (holding ?t - tile)
    (handempty)
  )

  (:action pick-from-tray
    :parameters (?t - tile)
    :precondition (and
      (on-tray ?t)
      (handempty)
    )
    :effect (and
      (holding ?t)
      (not (on-tray ?t))
      (not (handempty))
    )
  )

  (:action pick-from-hole
    :parameters (?t - tile ?h - hole)
    :precondition (and
      (in-hole ?t ?h)
      (handempty)
    )
    :effect (and
      (holding ?t)
      (empty ?h)
      (not (in-hole ?t ?h))
      (not (handempty))
    )
  )

  (:action place-in-hole
    :parameters (?t - tile ?h - hole ?c - color)
    :precondition (and
      (holding ?t)
      (empty ?h)
      (color-of ?t ?c)
      (hole-for ?h ?c)
    )
    :effect (and
      (in-hole ?t ?h)
      (not (empty ?h))
      (not (holding ?t))
      (handempty)
    )
  )

  (:action place-on-tray
    :parameters (?t - tile)
    :precondition (and
      (holding ?t)
    )
    :effect (and
      (on-tray ?t)
      (not (holding ?t))
      (handempty)
    )
  )

  ; Tiles are colored discs; holes belong to columns labeled by color (red, yellow, blue).
  ; Goal tasks place each tile into an empty hole with a matching label; pick/move actions are high-level.
)