(define (problem visual_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    bowl_red - target
    bowl_yellow - target
    bowl_blue - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free bowl_red)
    (free bowl_yellow)
    (free bowl_blue)
  )
  (:goal
    (and
      (in_target disc_red bowl_red)
      (in_target disc_yellow bowl_yellow)
      (in_target disc_blue bowl_blue)
    )
  )
)

; move_to_target disc_red bowl_red
; move_to_target disc_yellow bowl_yellow
; move_to_target disc_blue bowl_blue

; Verification summary:
; Total number of objects: 6
; Objects: 3 colored discs, 3 bowls
; No uncertainties or partially visible items.