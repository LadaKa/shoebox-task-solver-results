(define (problem ball_box_problem)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    bowl_green - target
    bowl_red - target
    bowl_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free bowl_green)
    (free bowl_red)
    (free bowl_blue)
  )
  (:goal
    (and
      (in_target ball_red bowl_red)
      (in_target ball_green bowl_green)
      (in_target ball_blue bowl_blue)
    )
  )
)

; move_to_target ball_red bowl_red
; move_to_target ball_green bowl_green
; move_to_target ball_blue bowl_blue

; Verification summary:
; Total number of objects: 6
; Objects: ball_red, ball_green, ball_blue, bowl_green, bowl_red, bowl_blue
; All items were clearly visible and identified by their color.