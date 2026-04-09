(define (problem shape_cards_3)
  (:domain shoebox-simple)
  (:objects
    tray_bowl_left - init_container
    ring_circle_blue - item
    triangle_blue - item
    square_blue - item
    card_circle_left - target
    card_triangle_center - target
    card_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container triangle_blue)
    (in_init_container square_blue)
    (free card_circle_left)
    (free card_triangle_center)
    (free card_square_right)
  )
  (:goal
    (and
      ; shape-matching rule: each blue shape must go onto the card with the same outline
      (in_target ring_circle_blue card_circle_left)
      (in_target triangle_blue card_triangle_center)
      (in_target square_blue card_square_right)
      ; task completion conditions
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (one object per target, matched by shape)
; move_to_target ring_circle_blue card_circle_left
; move_to_target triangle_blue card_triangle_center
; move_to_target square_blue card_square_right

; Comments:
; Goal: Empty the bowl and place each blue shape onto the card showing the same shape (circle, triangle, square).
; Targets are the three printed cards (left-to-right): circle, triangle, square.
; Verification summary:
; Total number of task objects: 7
; Objects listed: tray_bowl_left, ring_circle_blue, triangle_blue, square_blue, card_circle_left, card_triangle_center, card_square_right
; All items are visible; no uncertainties or partial visibility noted.