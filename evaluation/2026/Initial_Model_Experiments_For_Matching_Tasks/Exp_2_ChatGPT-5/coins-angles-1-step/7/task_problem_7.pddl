(define (problem shoebox_task_from_image)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_triangle_3sides - item
    token_quadrilateral_4sides - item
    token_hexagon_6sides - item
    hole_top_num3_triangle - target
    hole_middle_num4_square - target
    hole_bottom_num6_hexagon - target
  )
  (:init
    (in_init_container token_triangle_3sides)
    (in_init_container token_quadrilateral_4sides)
    (in_init_container token_hexagon_6sides)
    (free hole_top_num3_triangle)
    (free hole_middle_num4_square)
    (free hole_bottom_num6_hexagon)
  )
  (:goal
    (and
      ; Matching property: place each polygon into the hole labeled with the same number of sides (3, 4, 6) and icon.
      (in_target token_triangle_3sides hole_top_num3_triangle)
      (in_target token_quadrilateral_4sides hole_middle_num4_square)
      (in_target token_hexagon_6sides hole_bottom_num6_hexagon)
      ; Ensure all targets are occupied and the init container is empty.
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan:
; move_to_target token_triangle_3sides hole_top_num3_triangle
; move_to_target token_quadrilateral_4sides hole_middle_num4_square
; move_to_target token_hexagon_6sides hole_bottom_num6_hexagon

; Task goal summary:
; Insert each polygon token into the rightmost hole on its row, matching the number of sides shown (3→triangle, 4→quadrilateral, 6→hexagon). All three holes end up filled; the init container is empty.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container; token_triangle_3sides, token_quadrilateral_4sides, token_hexagon_6sides; hole_top_num3_triangle, hole_middle_num4_square, hole_bottom_num6_hexagon
; No uncertainties or partially visible items considered for the task (targets are the three rightmost circular holes; items are the three polygon tokens).