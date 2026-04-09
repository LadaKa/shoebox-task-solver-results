(define (problem box_task)
  (:domain shoebox-simple)
  (:objects
    container_init - init_container
    disk_1 - item
    disk_2 - item
    disk_3 - item
    box_1 - target
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
  (:goal
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
; Total number of objects: 7
; Objects: disk_1, disk_2, disk_3, box_1, box_2, box_3, container_init
; No uncertainties or partially visible items

; Task goal:
; Move each numbered disk into the correspondingly numbered box, emptying the initial container.