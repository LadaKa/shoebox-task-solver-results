(define (problem task_from_image)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    target_green - target
    target_red - target
    target_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free target_green)
    (free target_red)
    (free target_blue)
  )
  (:goal
    (and
      (in_target ball_red target_red)
      (in_target ball_green target_green)
      (in_target ball_blue target_blue)
    )
  )
)

; move_to_target ball_red target_red
; move_to_target ball_green target_green
; move_to_target ball_blue target_blue

; Verification summary:
; Total number of objects: 6
; Objects: 3 balls (red, green, blue), 3 targets (green, red, blue)
; No uncertainties or partially visible items

; Task goal: Each ball should be placed in the target with the matching color.