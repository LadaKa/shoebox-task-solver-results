(define (problem shoebox_image_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    box_red - target
    box_green - target
    box_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free box_red)
    (free box_green)
    (free box_blue)
  )
  (:goal
    (and
      (in_target ball_red box_red)
      (in_target ball_green box_green)
      (in_target ball_blue box_blue)
    )
  )
)

; move_to_target ball_red box_red
; move_to_target ball_green box_green
; move_to_target ball_blue box_blue

; Verification summary:
; Total number of objects: 6
; Objects: ball_red, ball_green, ball_blue, box_red, box_green, box_blue
; No uncertainties or partially visible items

; Task goal: Move each ball to its matching colored box.
; Objects identified by color and position.