(define (problem task_image)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_blue - item
    ball_green - item
    ball_yellow - item
    bowl_top_left_yellow - target
    bowl_bottom_left_green - target
    bowl_top_right_blue - target
    bowl_bottom_right_red - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_blue)
    (in_init_container ball_green)
    (in_init_container ball_yellow)
    (free bowl_top_left_yellow)
    (free bowl_bottom_left_green)
    (free bowl_top_right_blue)
    (free bowl_bottom_right_red)
  )
  (:goal
    (and
      (in_target ball_red bowl_bottom_right_red)
      (in_target ball_blue bowl_top_right_blue)
      (in_target ball_green bowl_bottom_left_green)
      (in_target ball_yellow bowl_top_left_yellow)
    )
  )
)
; move_to_target ball_red bowl_bottom_right_red
; move_to_target ball_blue bowl_top_right_blue
; move_to_target ball_green bowl_bottom_left_green
; move_to_target ball_yellow bowl_top_left_yellow

; Verification summary:
; Total number of objects: 8
; Objects: ball_red, ball_blue, ball_green, ball_yellow, bowl_top_left_yellow, bowl_bottom_left_green, bowl_top_right_blue, bowl_bottom_right_red
; All objects are fully visible and clearly identifiable.