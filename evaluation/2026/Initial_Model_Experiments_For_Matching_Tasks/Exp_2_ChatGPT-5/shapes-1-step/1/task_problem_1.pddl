(define (problem shapes_match_pegs_3)
  (:domain shoebox-simple)
  (:objects
    initial_bowl - init_container
    ring_circle_blue - item
    frame_triangle_blue - item
    frame_square_blue - item
    slot_left_circle_card - target
    slot_middle_triangle_card - target
    slot_right_square_card - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container frame_triangle_blue)
    (in_init_container frame_square_blue)
    (free slot_left_circle_card)
    (free slot_middle_triangle_card)
    (free slot_right_square_card)
  )
  (:goal
    (and
      ; shape-based matching (each item must go to the target with the same shape)
      (in_target ring_circle_blue slot_left_circle_card)
      (in_target frame_triangle_blue slot_middle_triangle_card)
      (in_target frame_square_blue slot_right_square_card)
      ; init container empty
      (not (in_init_container ring_circle_blue))
      (not (in_init_container frame_triangle_blue))
      (not (in_init_container frame_square_blue))
      ; each target non-empty
      (not (free slot_left_circle_card))
      (not (free slot_middle_triangle_card))
      (not (free slot_right_square_card))
    )
  )
)
; Plan (left-to-right, matching by shape):
; move_to_target ring_circle_blue slot_left_circle_card
; move_to_target frame_triangle_blue slot_middle_triangle_card
; move_to_target frame_square_blue slot_right_square_card

; Task goal: place each blue frame into the target card showing the same shape (circle, triangle, square), leaving the bowl empty and every target occupied.

; Verification summary:
; Total number of objects: 7
; Objects: initial_bowl, ring_circle_blue, frame_triangle_blue, frame_square_blue, slot_left_circle_card, slot_middle_triangle_card, slot_right_square_card
; No uncertainties or partially visible items noted.