(define (problem shoebox_shape_match_cards)
  (:domain shoebox-simple)
  (:objects
    init_bowl_left - init_container
    ring_circle_blue - item
    frame_triangle_blue - item
    frame_square_rotated_blue - item
    card_circle_left - target
    card_triangle_center - target
    card_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container frame_triangle_blue)
    (in_init_container frame_square_rotated_blue)
    (free card_circle_left)
    (free card_triangle_center)
    (free card_square_right)
  )
  (:goal
    (and
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Plan (match by printed shape on card; orientation of frames ignored)
; move_to_target ring_circle_blue card_circle_left
; move_to_target frame_triangle_blue card_triangle_center
; move_to_target frame_square_rotated_blue card_square_right

; Task goal: empty the left bowl and place each blue frame onto the target card showing the same shape.
; Object identification:
; - Init container: init_bowl_left
; - Items: ring_circle_blue, frame_triangle_blue, frame_square_rotated_blue
; - Targets: card_circle_left, card_triangle_center, card_square_right
; Verification summary:
; Total number of objects: 7
; Objects listed: init_bowl_left, ring_circle_blue, frame_triangle_blue, frame_square_rotated_blue, card_circle_left, card_triangle_center, card_square_right
; Uncertainty note: Four wooden pegs are visible but not modeled as targets; the three printed shape cards clearly indicate the intended target locations.