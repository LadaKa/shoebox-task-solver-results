(define (problem shoebox_puzzle)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disk_1 - item
    disk_2 - item
    disk_3 - item
    bowl_1 - target
    bowl_2 - target
    bowl_3 - target
  )
  (:init
    (in_init_container disk_1)
    (in_init_container disk_2)
    (in_init_container disk_3)
    (free bowl_1)
    (free bowl_2)
    (free bowl_3)
  )
  (:goal
    (and
      (in_target disk_1 bowl_1)
      (in_target disk_2 bowl_2)
      (in_target disk_3 bowl_3)
    )
  )
)

; move_to_target disk_1 bowl_1
; move_to_target disk_2 bowl_2
; move_to_target disk_3 bowl_3

; Verification summary:
; Total number of objects: 6
; Objects: disk_1, disk_2, disk_3, bowl_1, bowl_2, bowl_3
; Objects are numbered using visible numbers
; All objects are clearly visible and unambiguous