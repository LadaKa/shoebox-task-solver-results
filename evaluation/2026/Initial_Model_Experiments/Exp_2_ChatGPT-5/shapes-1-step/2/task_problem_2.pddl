(define (problem shape_cards_match_3)
  (:domain shoebox-simple)
  (:objects
    tray_bowl_left - init_container
    ring_blue_circle - item
    triangle_blue - item
    square_blue_rotated45 - item
    card_circle_left - target
    card_triangle_center - target
    card_square_right - target
  )
  (:init
    (in_init_container ring_blue_circle)
    (in_init_container triangle_blue)
    (in_init_container square_blue_rotated45)
    (free card_circle_left)
    (free card_triangle_center)
    (free card_square_right)
  )
  (:goal
    (and
      ; property-based matching by shape shown on cards
      (in_target ring_blue_circle card_circle_left)
      (in_target triangle_blue card_triangle_center)
      (in_target square_blue_rotated45 card_square_right)
      ; global goal conditions for emptiness/non-emptiness
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Action plan:
; move_to_target ring_blue_circle card_circle_left
; move_to_target triangle_blue card_triangle_center
; move_to_target square_blue_rotated45 card_square_right

; Task goal: place each blue frame shape onto the card with the matching blue outline:
; circle -> left card, triangle -> center card, square (shown as rotated diamond piece) -> right card.

; Verification summary:
; Total number of objects: 7
; Objects: tray_bowl_left, ring_blue_circle, triangle_blue, square_blue_rotated45, card_circle_left, card_triangle_center, card_square_right
; All listed items and targets are clearly visible; no uncertainties or partially visible items.