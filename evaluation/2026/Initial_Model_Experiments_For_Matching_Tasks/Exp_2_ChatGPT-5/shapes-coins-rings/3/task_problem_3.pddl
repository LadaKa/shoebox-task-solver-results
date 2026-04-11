(define (problem shoebox_image_task_01)
  (:domain shoebox-simple)
  (:objects
    init_tray - init_container
    token_circle_blue - item
    token_triangle_blue - item
    token_diamond_blue - item
    frame_circle_top_left - target
    frame_triangle_mid_left - target
    frame_square_bottom_left - target
  )
  (:init
    (in_init_container token_circle_blue)
    (in_init_container token_triangle_blue)
    (in_init_container token_diamond_blue)
    (free frame_circle_top_left)
    (free frame_triangle_mid_left)
    (free frame_square_bottom_left)
  )
  (:goal
    (and
      ; shape-based assignment:
      ; - circle token → circular frame (top-left)
      ; - triangle token → triangular frame (middle-left)
      ; - diamond token (a rotated square) → square frame (bottom-left)
      (in_target token_circle_blue frame_circle_top_left)
      (in_target token_triangle_blue frame_triangle_mid_left)
      (in_target token_diamond_blue frame_square_bottom_left)
      ; generic goal conditions required by the task:
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (one object per target, matching by shape/squaredness)
; move_to_target token_circle_blue frame_circle_top_left
; move_to_target token_triangle_blue frame_triangle_mid_left
; move_to_target token_diamond_blue frame_square_bottom_left

; Task goal: Place each wooden round token into the matching framed slot by the printed shape.
; The “diamond” token is matched to the square frame (same 4‑equal‑sides shape, rotated).

; Objects identified:
; - Items (movable, initially in init_tray): token_circle_blue, token_triangle_blue, token_diamond_blue
; - Targets (fixed frames used in this task; left column, top-to-bottom): frame_circle_top_left, frame_triangle_mid_left, frame_square_bottom_left
; Note: Additional duplicate frames in the right column are visible but not part of this minimal 3-token task.

; Verification summary:
; Total number of objects: 7
; Objects: init_tray; token_circle_blue, token_triangle_blue, token_diamond_blue; frame_circle_top_left, frame_triangle_mid_left, frame_square_bottom_left
; No uncertain or partially visible items were used in the task description.