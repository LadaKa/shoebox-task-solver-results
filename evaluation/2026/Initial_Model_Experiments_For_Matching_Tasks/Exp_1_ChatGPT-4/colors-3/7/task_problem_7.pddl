(define (problem task_image_example)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    target_red - target
    target_yellow - target
    target_blue - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free target_red)
    (free target_yellow)
    (free target_blue)
  )
  (:goal
    (and
      (in_target disc_red target_red)
      (in_target disc_yellow target_yellow)
      (in_target disc_blue target_blue)
    )
  )
)
; move_to_target disc_red target_red
; move_to_target disc_yellow target_yellow
; move_to_target disc_blue target_blue

; Verification summary:
; Total number of objects: 6
; Objects: 3 discs (disc_red, disc_yellow, disc_blue), 3 targets (target_red, target_yellow, target_blue)
; Items are matched to targets by color (red, yellow, blue)
; No uncertainties or partially visible items

; Task goal: To move each colored disc to its matching target based on color.