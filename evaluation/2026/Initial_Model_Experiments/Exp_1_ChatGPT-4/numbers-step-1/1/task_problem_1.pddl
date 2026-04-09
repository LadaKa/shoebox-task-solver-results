(define (problem box_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_1 - item
    disc_2 - item
    disc_3 - item
    slot_1 - target
    slot_2 - target
    slot_3 - target
  )
  (:init
    (in_init_container disc_1)
    (in_init_container disc_2)
    (in_init_container disc_3)
    (free slot_1)
    (free slot_2)
    (free slot_3)
  )
  (:goal
    (and
      (in_target disc_1 slot_1)
      (in_target disc_2 slot_2)
      (in_target disc_3 slot_3)
    )
  )
)

; move_to_target disc_1 slot_1
; move_to_target disc_2 slot_2
; move_to_target disc_3 slot_3

; Verification summary:
; Total number of objects: 7
; Objects: disc_1, disc_2, disc_3, slot_1, slot_2, slot_3, initial_container
; All objects are clearly visible and counted.