(define (problem image_task)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    slot_red - target
    slot_yellow - target
    slot_blue - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free slot_red)
    (free slot_yellow)
    (free slot_blue)
  )
  (:goal
    (and
      (in_target disc_red slot_red)
      (in_target disc_yellow slot_yellow)
      (in_target disc_blue slot_blue)
    )
  )
)

; move_to_target disc_red slot_red
; move_to_target disc_yellow slot_yellow
; move_to_target disc_blue slot_blue

; Verification summary:
; Total number of objects: 6
; Objects: disc_red, disc_yellow, disc_blue, slot_red, slot_yellow, slot_blue
; No uncertainties or partially visible items