(define (problem shoebox_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disk_1 - item           ; discs numbered 1 to 3
    disk_2 - item
    disk_3 - item
    box_1 - target          ; boxes numbered 1 to 3
    box_2 - target
    box_3 - target
  )
  (:init
    (in_init_container disk_1)
    (in_init_container disk_2)
    (in_init_container disk_3)
    (free box_1)
    (free box_2)
    (free box_3)
  )
  (:goal                    ; match disks to corresponding numbered boxes
    (and
      (in_target disk_1 box_1)
      (in_target disk_2 box_2)
      (in_target disk_3 box_3)
    )
  )
)

; move_to_target disk_1 box_1
; move_to_target disk_2 box_2
; move_to_target disk_3 box_3

; Verification summary:
; Total number of objects: 6
; Objects: 3 discs (disk_1, disk_2, disk_3), 3 boxes (box_1, box_2, box_3)
; All objects are clearly visible and identifiable with numbers