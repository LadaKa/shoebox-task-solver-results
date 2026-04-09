(define (problem shoebox_task_from_image_01)
  (:domain shoebox-simple)
  (:objects
    init_box - init_container
    disc_triangle_blue - item
    disc_rhombus_blue - item        ; diamond/tilted square (4 sides)
    disc_hexagon_blue - item
    hole_row1_right_with_label_3_triangle - target
    hole_row2_right_with_label_4_square - target
    hole_row3_right_with_label_6_hexagon - target
  )
  (:init
    (in_init_container disc_triangle_blue)
    (in_init_container disc_rhombus_blue)
    (in_init_container disc_hexagon_blue)
    (free hole_row1_right_with_label_3_triangle)
    (free hole_row2_right_with_label_4_square)
    (free hole_row3_right_with_label_6_hexagon)
  )
  (:goal
    (and
      ; item-to-target matches are determined by “number of sides” shown in each row:
      ; 3→triangle (top row), 4→rhombus/rotated square (middle row), 6→hexagon (bottom row)
      (in_target disc_triangle_blue hole_row1_right_with_label_3_triangle)
      (in_target disc_rhombus_blue hole_row2_right_with_label_4_square)
      (in_target disc_hexagon_blue hole_row3_right_with_label_6_hexagon)
      ; init_container empty and all targets filled
      (not (in_init_container disc_triangle_blue))
      (not (in_init_container disc_rhombus_blue))
      (not (in_init_container disc_hexagon_blue))
      (not (free hole_row1_right_with_label_3_triangle))
      (not (free hole_row2_right_with_label_4_square))
      (not (free hole_row3_right_with_label_6_hexagon))
    )
  )
)
; Plan (sequence of actions):
; move_to_target disc_triangle_blue hole_row1_right_with_label_3_triangle
; move_to_target disc_rhombus_blue hole_row2_right_with_label_4_square
; move_to_target disc_hexagon_blue hole_row3_right_with_label_6_hexagon

; Task goal:
; Place each blue polygon disc into the empty circular hole on the right in the same row,
; matching the number of sides indicated by the row’s label (3, 4, 6).

; Object identification:
; - Movable items (left slots): triangle, rhombus/diamond (interpreted as a 4‑sided rotated square), hexagon.
; - Targets (rightmost column): three empty circular holes aligned with rows 1–3.
; - The white box is the init_container.

; Verification summary:
; - Total number of task objects: 7
; - Objects: init_box; disc_triangle_blue, disc_rhombus_blue, disc_hexagon_blue;
;            hole_row1_right_with_label_3_triangle, hole_row2_right_with_label_4_square,
;            hole_row3_right_with_label_6_hexagon
; - Uncertainties: the “rhombus/diamond” item is interpreted as a 4‑sided rotated square to match the “4” label.
; - Note: the six filled circular wells with printed numbers/shapes in the center are fixed board labels, not targets/items in this PDDL instance.