(define (problem shoebox_shapes_numbers_match)
  (:domain shoebox-simple)
  (:objects
    init_bin - init_container
    disc_triangle_blue - item
    disc_hexagon_blue - item
    disc_parallelogram_blue - item
    well_top_num3_triangle - target
    well_middle_num4_square - target
    well_bottom_num6_hexagon - target
  )
  (:init
    (in_init_container disc_triangle_blue)
    (in_init_container disc_hexagon_blue)
    (in_init_container disc_parallelogram_blue)
    (free well_top_num3_triangle)
    (free well_middle_num4_square)
    (free well_bottom_num6_hexagon)
  )
  (:goal
    (and
      ; property-based assignment: place each disc into the well whose row number equals its number of sides
      (in_target disc_triangle_blue well_top_num3_triangle)        ; 3 sides -> row "3"
      (in_target disc_parallelogram_blue well_middle_num4_square)  ; 4 sides -> row "4"
      (in_target disc_hexagon_blue well_bottom_num6_hexagon)       ; 6 sides -> row "6"
      (forall (?y - target) (not (free ?y)))                       ; every well filled
      (forall (?x - item) (not (in_init_container ?x)))            ; init container empty
    )
  )
)

; Action plan:
; move_to_target disc_triangle_blue well_top_num3_triangle
; move_to_target disc_parallelogram_blue well_middle_num4_square
; move_to_target disc_hexagon_blue well_bottom_num6_hexagon

; Task goal: Fill each right-column well using the disc whose number of sides matches the row’s printed number (3, 4, 6). The init container ends empty.

; Verification summary:
; Total number of objects: 7
; Objects: init_bin, disc_triangle_blue, disc_hexagon_blue, disc_parallelogram_blue, well_top_num3_triangle, well_middle_num4_square, well_bottom_num6_hexagon
; All three discs are visible (partially slid in slots); no uncertain or hidden items detected.