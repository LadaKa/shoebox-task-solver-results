(define (problem problem_image)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    bowl_red - target
    bowl_green - target
    bowl_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free bowl_red)
    (free bowl_green)
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

; Action plan:
; move_to_target ball_green bowl_green
; move_to_target ball_red bowl_red
; move_to_target ball_blue bowl_blue

; Verification summary:
; Total number of objects: 6
; Objects: ball_red, ball_green, ball_blue, bowl_red, bowl_green, bowl_blue
; All items were fully visible, no uncertainties or partially visible items.

; Task goal: Move each colored ball into the corresponding bowl with the matching colored flap.