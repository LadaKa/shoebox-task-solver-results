(define (problem shape_match_left_column)
  (:domain shoebox-simple)
  (:objects
    tray_left_slots - init_container

    disk_blue_diamond - item          ; wooden disk with blue diamond (rotated square)
    disk_blue_triangle - item         ; wooden disk with blue triangle
    disk_blue_circle - item           ; wooden disk with blue circle

    ring_circle_left_top - target     ; left column, top
    ring_triangle_left_middle - target
    ring_square_left_bottom - target
  )
  (:init
    (in_init_container disk_blue_diamond)
    (in_init_container disk_blue_triangle)
    (in_init_container disk_blue_circle)

    (free ring_circle_left_top)
    (free ring_triangle_left_middle)
    (free ring_square_left_bottom)
  )
  (:goal
    (and
      ; property-based matching by shape:
      (in_target disk_blue_circle ring_circle_left_top)
      (in_target disk_blue_triangle ring_triangle_left_middle)
      (in_target disk_blue_diamond ring_square_left_bottom) ; diamond matches square (rotated square)

      ; container empty and each target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (one item per target by matching shape)
; move_to_target disk_blue_circle ring_circle_left_top
; move_to_target disk_blue_triangle ring_triangle_left_middle
; move_to_target disk_blue_diamond ring_square_left_bottom

; Task goal: place each wooden disk onto the left-column ring whose outline matches its blue shape.
; Matching rule: circle->circle, triangle->triangle, diamond (rotated square)->square.

; Verification summary:
; Total number of objects: 6 (3 items, 3 targets)
; Items: disk_blue_diamond, disk_blue_triangle, disk_blue_circle
; Targets: ring_circle_left_top, ring_triangle_left_middle, ring_square_left_bottom
; No uncertainties or partially visible items were used in the task representation.