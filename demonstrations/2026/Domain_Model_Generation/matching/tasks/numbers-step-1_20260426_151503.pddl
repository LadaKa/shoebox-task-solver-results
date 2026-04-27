(define (domain sort-numbered-discs)
  (:requirements :strips :typing)

  (:types
    token
    tray
    digit
  )

  (:predicates
    (in-source ?x - token)
    (in-tray ?x - token ?t - tray)
    (holding ?x - token)
    (handempty)
    (token-label ?x - token ?d - digit)
    (tray-label ?t - tray ?d - digit)
    (empty ?t - tray)
  )

  (:action pick-from-source
    :parameters (?x - token)
    :precondition (and
      (in-source ?x)
      (handempty)
    )
    :effect (and
      (not (in-source ?x))
      (not (handempty))
      (holding ?x)
    )
  )

  (:action place-in-matching-tray
    :parameters (?x - token ?t - tray ?d - digit)
    :precondition (and
      (holding ?x)
      (token-label ?x ?d)
      (tray-label ?t ?d)
      (empty ?t)
    )
    :effect (and
      (not (holding ?x))
      (handempty)
      (in-tray ?x ?t)
      (not (empty ?t))
    )
  )

  ; Task modeled from the image: sort round numbered discs from a left source bin into right trays with the same number.
  ; pick-from-source picks a disc when the hand is empty; place-in-matching-tray puts it into the tray with the same label, ensuring each tray holds one disc.
)