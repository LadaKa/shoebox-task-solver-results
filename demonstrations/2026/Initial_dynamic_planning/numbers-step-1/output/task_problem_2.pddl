(define (problem problem_shoebox_example)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    disk_1 - item
    disk_2 - item
    disk_3 - item
    box_1 - target
    box_2 - target
    box_3 - target
  )
  (:init
    (in_init_container disk_3)
    (free box_3)
    (in_target disk_1 box_1)
    (in_target disk_2 box_2)
  )
  (:goal
    (and
      (in_target disk_1 box_1)
      (in_target disk_2 box_2)
      (in_target disk_3 box_3)
    )
  )
)

; move_to_target disk_3 box_3

; Verification summary:
; Total number of objects: 6
; Objects: disk_1, disk_2, disk_3, box_1, box_2, box_3
; No uncertainties or partially visible items

; Task goal: Move each disk to its corresponding box based on the matching number.