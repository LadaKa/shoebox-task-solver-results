(define (problem task_from_image_color_columns_toprow)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disk_red - item
    disk_yellow - item
    disk_blue - item
    slot_left_top_with_red_square - target
    slot_middle_top_with_yellow_square - target
    slot_right_top_with_blue_square - target
  )
  (:init
    (in_init_container disk_red)
    (in_init_container disk_yellow)
    (in_init_container disk_blue)
    (free slot_left_top_with_red_square)
    (free slot_middle_top_with_yellow_square)
    (free slot_right_top_with_blue_square)
  )
  (:goal
    (and
      ; color-matching requirement: each colored disk must go into the top-row slot under the square of the same color
      (in_target disk_red slot_left_top_with_red_square)
      (in_target disk_yellow slot_middle_top_with_yellow_square)
      (in_target disk_blue slot_right_top_with_blue_square)
      ; general goal conditions: all targets filled, init container empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (color-to-column placement, one item per target):
; move_to_target disk_red slot_left_top_with_red_square
; move_to_target disk_yellow slot_middle_top_with_yellow_square
; move_to_target disk_blue slot_right_top_with_blue_square

; Task goal comment:
; Place each colored wooden disk into the top-row circular slot directly beneath the square of the same color
; (left:red, middle:yellow, right:blue). The left slotted area is treated as the initial container.

; Verification summary:
; Total number of task objects: 7
; Objects: initial_container; items -> disk_red, disk_yellow, disk_blue; targets -> slot_left_top_with_red_square, slot_middle_top_with_yellow_square, slot_right_top_with_blue_square
; Note: Additional unlabeled circular recesses are visible but not part of the labeled color-matching task, so they are excluded. No uncertainties about the listed objects.