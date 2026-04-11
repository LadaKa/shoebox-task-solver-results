(define (problem task_example)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    disk_red - item
    disk_yellow - item
    disk_blue - item
    slot_red - target
    slot_yellow - target
    slot_blue - target
  )
  (:init
    (in_init_container disk_red)
    (in_init_container disk_yellow)
    (in_init_container disk_blue)
    (free slot_red)
    (free slot_yellow)
    (free slot_blue)
  )
  (:goal
    (forall (?y - target)
        (not (free ?y))
    )
    (forall (?x - item)
        (not (in_init_container ?x))
    )
  )
)

; move_to_target disk_red slot_red
; move_to_target disk_yellow slot_yellow
; move_to_target disk_blue slot_blue

; Verification summary:
; Total number of objects: 6
; Objects: disk_red, disk_yellow, disk_blue, slot_red, slot_yellow, slot_blue
; All objects are clearly visible and distinguishable by color

; Task goal:
; Move each colored disk to the matching colored slot (`disk_red` to `slot_red`, etc.).