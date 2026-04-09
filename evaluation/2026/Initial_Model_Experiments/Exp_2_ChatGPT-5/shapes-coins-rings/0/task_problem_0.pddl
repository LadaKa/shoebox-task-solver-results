(define (problem shoebox_shapes_match_left_column)
  (:domain shoebox-simple)
  (:objects
    tray_left_slots - init_container
    disk_blue_circle - item
    disk_blue_triangle - item
    disk_blue_diamond - item
    slot_circle_col1_row1 - target
    slot_triangle_col1_row2 - target
    slot_square_col1_row3 - target
  )
  (:init
    (in_init_container disk_blue_circle)
    (in_init_container disk_blue_triangle)
    (in_init_container disk_blue_diamond)
    (free slot_circle_col1_row1)
    (free slot_triangle_col1_row2)
    (free slot_square_col1_row3)
  )
  (:goal
    (and
      ; matching rule by shape (diamond matches the square slot)
      (in_target disk_blue_circle slot_circle_col1_row1)
      (in_target disk_blue_triangle slot_triangle_col1_row2)
      (in_target disk_blue_diamond slot_square_col1_row3)
      ; container empty and each target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; move_to_target disk_blue_circle slot_circle_col1_row1
; move_to_target disk_blue_triangle slot_triangle_col1_row2
; move_to_target disk_blue_diamond slot_square_col1_row3

; Task goal: place each wooden disk (circle, triangle, diamond) into the left-column slot with the matching icon; the diamond corresponds to the square slot (rotated square).
; Object identification:
; - init_container: tray_left_slots (white tray area with horizontal slots on the left).
; - items: disk_blue_circle, disk_blue_triangle, disk_blue_diamond (three round wooden tokens with blue shapes).
; - targets: slot_circle_col1_row1, slot_triangle_col1_row2, slot_square_col1_row3 (three round recesses in the left column).
; Verification summary:
; - Total number of objects: 7
; - Objects: tray_left_slots, disk_blue_circle, disk_blue_triangle, disk_blue_diamond, slot_circle_col1_row1, slot_triangle_col1_row2, slot_square_col1_row3
; - No uncertainties or partially visible items noted.