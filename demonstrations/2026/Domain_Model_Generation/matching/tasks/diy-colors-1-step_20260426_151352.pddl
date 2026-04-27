(define (domain color-sort-trays)
  (:requirements :strips :typing)
  (:types ball place)

  (:predicates
    (in ?b - ball ?p - place)
    (holding ?b - ball)
    (handempty)
    (tray ?p - place)
    (source ?p - place)
    (matches ?b - ball ?t - place)
    (empty ?t - place)
  )

  (:action pick-from-source
    :parameters (?b - ball ?s - place)
    :precondition (and (source ?s) (in ?b ?s) (handempty))
    :effect (and
      (not (in ?b ?s))
      (not (handempty))
      (holding ?b))
  )

  (:action pick-from-tray
    :parameters (?b - ball ?t - place)
    :precondition (and (tray ?t) (in ?b ?t) (handempty))
    :effect (and
      (not (in ?b ?t))
      (not (handempty))
      (holding ?b)
      (empty ?t))
  )

  (:action place-in-tray
    :parameters (?b - ball ?t - place)
    :precondition (and (holding ?b) (tray ?t) (matches ?b ?t) (empty ?t))
    :effect (and
      (in ?b ?t)
      (handempty)
      (not (holding ?b))
      (not (empty ?t)))
  )

  (:action place-in-source
    :parameters (?b - ball ?s - place)
    :precondition (and (holding ?b) (source ?s))
    :effect (and
      (in ?b ?s)
      (handempty)
      (not (holding ?b)))
  )

  ; Sort colored balls from a source box into matching colored trays.
  ; matches(b,t) encodes color agreement; trays have unit capacity via empty(t).
  ; Pick from source or from a tray, place into a tray if it matches and is empty, or return to source.
)