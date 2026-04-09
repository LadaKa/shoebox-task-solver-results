(define (problem shoebox_task_shapes_1)
  (:domain shoebox-simple)
  (:objects
    init_bin - init_container
    token_circle_blue - item
    token_triangle_blue - item
    token_diamond_blue - item
    target_circle_left_top - target
    target_triangle_left_middle - target
    target_square_left_bottom - target
  )
  (:init
    (in_init_container token_circle_blue)
    (in_init_container token_triangle_blue)
    (in_init_container token_diamond_blue)
    (free target_circle_left_top)
    (free target_triangle_left_middle)
    (free target_square_left_bottom)
  )
  (:goal
    (and
      ; the init container is empty
      (not (in_init_container token_circle_blue))
      (not (in_init_container token_triangle_blue))
      (not (in_init_container token_diamond_blue))
      ; every target is occupied
      (not (free target_circle_left_top))
      (not (free target_triangle_left_middle))
      (not (free target_square_left_bottom))
      ; shape-matching rule: each token goes to the target with the same shape
      (in_target token_circle_blue target_circle_left_top)
      (in_target token_triangle_blue target_triangle_left_middle)
      ; diamond token matches the square frame (rotated square)
      (in_target token_diamond_blue target_square_left_bottom)
    )
  )
)
; Action plan (shape-matching):
; move_to_target token_circle_blue target_circle_left_top
; move_to_target token_triangle_blue target_triangle_left_middle
; move_to_target token_diamond_blue target_square_left_bottom

; Task goal/comment:
; Place each wooden token into the frame with the same shape on the left column of frames: circle->circle, triangle->triangle, diamond->square.

; Objects identified:
; - Movable items: three wooden circular tokens printed with blue shapes (circle, triangle, diamond).
; - Targets: three blue plastic frames on the left column (top circle frame, middle triangle frame, bottom square frame).

; Verification summary:
; Total number of objects: 7
; Objects: init_bin, token_circle_blue, token_triangle_blue, token_diamond_blue, target_circle_left_top, target_triangle_left_middle, target_square_left_bottom
; Notes: Additional blue frames (right column) are visible duplicates; treated as distractors and not modeled as targets in this instance. No objects are partially visible.