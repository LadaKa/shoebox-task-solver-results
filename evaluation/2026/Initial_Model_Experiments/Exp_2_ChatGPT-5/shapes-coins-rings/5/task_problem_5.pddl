(define (problem shoebox_shapes_left_column)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_circle_blue - item
    token_triangle_blue - item
    token_square_rotated_blue - item
    slot_left_top_circle - target
    slot_left_middle_triangle - target
    slot_left_bottom_square - target
  )
  (:init
    (in_init_container token_circle_blue)
    (in_init_container token_triangle_blue)
    (in_init_container token_square_rotated_blue)
    (free slot_left_top_circle)
    (free slot_left_middle_triangle)
    (free slot_left_bottom_square)
  )
  (:goal
    (and
      ; Match-by-shape property: circle→circle slot, triangle→triangle slot, rotated-square (diamond)→square slot.
      (in_target token_circle_blue slot_left_top_circle)
      (in_target token_triangle_blue slot_left_middle_triangle)
      (in_target token_square_rotated_blue slot_left_bottom_square)
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (one item per matching target, any order valid):
; move_to_target token_circle_blue slot_left_top_circle
; move_to_target token_triangle_blue slot_left_middle_triangle
; move_to_target token_square_rotated_blue slot_left_bottom_square

; Task goal:
; Place each wooden disc from the initial container into the left-column slots according to the shape shown on the disc:
; circle→top slot with circle label, triangle→middle slot with triangle label, rotated-square (diamond)→bottom slot with square label.

; Object identification notes:
; Items (movable): 3 wooden discs with printed shapes (circle, triangle, rotated-square/diamond).
; Targets (fixed): 3 circular recesses in the left column, labeled by adjacent blue frames (circle/triangle/square) indicating the required shape.
; Additional duplicate frames/slots on the right are visible but not modeled for this step to keep the solvable set aligned with the available three discs.

; Verification summary:
; Total number of task objects: 6 (3 items, 3 targets)
; Items: token_circle_blue, token_triangle_blue, token_square_rotated_blue
; Targets: slot_left_top_circle, slot_left_middle_triangle, slot_left_bottom_square
; No uncertainties in the three modeled items/targets.