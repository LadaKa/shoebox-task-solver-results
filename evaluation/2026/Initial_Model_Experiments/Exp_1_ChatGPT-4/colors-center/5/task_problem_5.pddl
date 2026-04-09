(define (problem problem_pom_pom_sorting)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    pom_red - item
    pom_blue - item
    pom_yellow - item
    pom_green - item
    bowl_yellow_top_left - target
    bowl_green_bottom_left - target
    bowl_blue_top_right - target
    bowl_red_bottom_right - target
  )
  (:init
    (in_init_container pom_red)
    (in_init_container pom_blue)
    (in_init_container pom_yellow)
    (in_init_container pom_green)
    (free bowl_yellow_top_left)
    (free bowl_green_bottom_left)
    (free bowl_blue_top_right)
    (free bowl_red_bottom_right)
  )
  (:goal
    (and
      (in_target pom_red bowl_red_bottom_right)
      (in_target pom_blue bowl_blue_top_right)
      (in_target pom_yellow bowl_yellow_top_left)
      (in_target pom_green bowl_green_bottom_left)
    )
  )
)
; move_to_target pom_red bowl_red_bottom_right
; move_to_target pom_blue bowl_blue_top_right
; move_to_target pom_yellow bowl_yellow_top_left
; move_to_target pom_green bowl_green_bottom_left

; Verification summary:
; Total number of objects: 8
; Objects: pom_red, pom_blue, pom_yellow, pom_green, bowl_yellow_top_left, bowl_green_bottom_left, bowl_blue_top_right, bowl_red_bottom_right
; All objects are clearly visible without any uncertainty