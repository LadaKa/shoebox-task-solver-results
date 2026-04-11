(define (problem shoebox_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_blue - item
    ball_green - item
    ball_yellow - item
    bowl_with_red - target
    bowl_with_blue - target
    bowl_with_green - target
    bowl_with_yellow - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_blue)
    (in_init_container ball_green)
    (in_init_container ball_yellow)
    (free bowl_with_red)
    (free bowl_with_blue)
    (free bowl_with_green)
    (free bowl_with_yellow)
  )
  (:goal
    (and
      (in_target ball_red bowl_with_red)
      (in_target ball_blue bowl_with_blue)
      (in_target ball_green bowl_with_green)
      (in_target ball_yellow bowl_with_yellow)
    )
  )
)

; move_to_target ball_red bowl_with_red
; move_to_target ball_blue bowl_with_blue
; move_to_target ball_green bowl_with_green
; move_to_target ball_yellow bowl_with_yellow

; Verification summary:
; Total number of objects: 8
; Objects: ball_red, ball_blue, ball_green, ball_yellow, bowl_with_red, bowl_with_blue, bowl_with_green, bowl_with_yellow
; All objects are fully visible with no uncertainties