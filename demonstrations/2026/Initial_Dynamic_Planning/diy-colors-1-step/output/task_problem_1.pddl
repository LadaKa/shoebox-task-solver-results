(define (problem shoebox_task)
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
    (in_init_container ball_blue)
    (in_target ball_green target_green)
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

; Action plan:
; move_to_target ball_red target_red
; move_to_target ball_blue target_blue

; Verification summary:
; Total number of objects: 6
; Objects: ball_red, ball_green, ball_blue, target_green, target_red, target_blue
; No uncertainties or partially visible items

; Task goal:
; Match each colored ball to the target box with a matching colored strip.