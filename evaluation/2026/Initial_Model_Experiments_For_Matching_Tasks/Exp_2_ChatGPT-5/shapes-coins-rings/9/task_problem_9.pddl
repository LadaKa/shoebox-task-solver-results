(define (problem shape_sorter_rows_by_shape)
  (:domain shoebox-simple)
  (:objects
    tray_left - init_container
    ring_circle_1 - item
    ring_circle_2 - item
    frame_triangle_1 - item
    frame_triangle_2 - item
    frame_square_1 - item
    frame_square_2 - item
    slot_top_left_circle - target
    slot_top_right_circle - target
    slot_middle_left_triangle - target
    slot_middle_right_triangle - target
    slot_bottom_left_square - target
    slot_bottom_right_square - target
  )
  (:init
    (in_init_container ring_circle_1)
    (in_init_container ring_circle_2)
    (in_init_container frame_triangle_1)
    (in_init_container frame_triangle_2)
    (in_init_container frame_square_1)
    (in_init_container frame_square_2)
    (free slot_top_left_circle)
    (free slot_top_right_circle)
    (free slot_middle_left_triangle)
    (free slot_middle_right_triangle)
    (free slot_bottom_left_square)
    (free slot_bottom_right_square)
  )
  (:goal
    (and
      ; Matching property enforced: each row has a specific shape
      (in_target ring_circle_1 slot_top_left_circle)           ; top row -> circles
      (in_target ring_circle_2 slot_top_right_circle)
      (in_target frame_triangle_1 slot_middle_left_triangle)   ; middle row -> triangles
      (in_target frame_triangle_2 slot_middle_right_triangle)
      (in_target frame_square_1 slot_bottom_left_square)       ; bottom row -> squares
      (in_target frame_square_2 slot_bottom_right_square)
      (forall (?y - target) (not (free ?y)))                   ; every slot filled
      (forall (?x - item) (not (in_init_container ?x)))        ; init container empty
    )
  )
)

; Plan (one item per matching slot, left-to-right, top-to-bottom):
; move_to_target ring_circle_1 slot_top_left_circle
; move_to_target ring_circle_2 slot_top_right_circle
; move_to_target frame_triangle_1 slot_middle_left_triangle
; move_to_target frame_triangle_2 slot_middle_right_triangle
; move_to_target frame_square_1 slot_bottom_left_square
; move_to_target frame_square_2 slot_bottom_right_square

; Task goal: place each blue frame into the socket of the row labeled by its shape
; (circles on top row, triangles in middle row, squares on bottom row).
; Verification summary:
; Total number of objects (items + targets): 12
; Items: ring_circle_1, ring_circle_2, frame_triangle_1, frame_triangle_2, frame_square_1, frame_square_2
; Targets: slot_top_left_circle, slot_top_right_circle, slot_middle_left_triangle, slot_middle_right_triangle, slot_bottom_left_square, slot_bottom_right_square
; All objects are clearly visible; no uncertainties or partial occlusions.