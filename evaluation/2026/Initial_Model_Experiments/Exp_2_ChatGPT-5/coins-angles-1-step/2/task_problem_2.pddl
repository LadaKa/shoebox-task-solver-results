(define (problem shoebox_from_image_001)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_triangle_row1 - item
    token_square_row2 - item
    token_hexagon_row3 - item
    well_row1_right - target
    well_row2_right - target
    well_row3_right - target
  )
  (:init
    ; All three movable wooden tokens start in the initial container (left reservoir/slot area).
    (in_init_container token_triangle_row1)
    (in_init_container token_square_row2)
    (in_init_container token_hexagon_row3)
    ; Three empty circular wells on the far-right column are free targets (top/middle/bottom).
    (free well_row1_right)
    (free well_row2_right)
    (free well_row3_right)
  )
  (:goal
    (and
      ; Match each token to the empty well in the same row, guided by the printed cues:
      ; row1: number 3 ↔ triangle, row2: number 4 ↔ square, row3: number 6 ↔ hexagon.
      (in_target token_triangle_row1 well_row1_right)
      (in_target token_square_row2 well_row2_right)
      (in_target token_hexagon_row3 well_row3_right)
      ; Init container is empty and every target is occupied.
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (one object per target, placed by row/shape rule):
; move_to_target token_triangle_row1 well_row1_right
; move_to_target token_square_row2 well_row2_right
; move_to_target token_hexagon_row3 well_row3_right

; Task goal/comment:
; Place each shaped wooden token into the empty circular well in the same row,
; matching the row’s cue (3→triangle, 4→square, 6→hexagon). All three wells become filled and the init container ends empty.

; Object identification:
; - Movable items (left slots, top-to-bottom): token_triangle_row1, token_square_row2, token_hexagon_row3.
; - Targets (rightmost empty wells, top-to-bottom): well_row1_right, well_row2_right, well_row3_right.
; - Other printed disks (numbers/shapes already seated) are fixed board cues and are not modeled as movable/targets.

; Verification summary:
; Total number of objects: 7
; Objects listed: initial_container; token_triangle_row1; token_square_row2; token_hexagon_row3; well_row1_right; well_row2_right; well_row3_right.
; No uncertainties or partially visible task objects were used.