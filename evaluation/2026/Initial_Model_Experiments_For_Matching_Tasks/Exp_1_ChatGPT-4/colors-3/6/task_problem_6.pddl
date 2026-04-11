(define (problem color_sorting_problem)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    hole_red_square_top_left - target
    hole_yellow_square_top_center - target
    hole_blue_square_top_right - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free hole_red_square_top_left)
    (free hole_yellow_square_top_center)
    (free hole_blue_square_top_right)
  )
  (:goal
    (and
      (in_target disc_red hole_red_square_top_left)
      (in_target disc_yellow hole_yellow_square_top_center)
      (in_target disc_blue hole_blue_square_top_right)
    )
  )
)

; move_to_target disc_red hole_red_square_top_left
; move_to_target disc_yellow hole_yellow_square_top_center
; move_to_target disc_blue hole_blue_square_top_right

; Verification summary:
; Total number of objects: 6
; Objects: disc_red, disc_yellow, disc_blue, hole_red_square_top_left, hole_yellow_square_top_center, hole_blue_square_top_right
; No uncertainties or partially visible items detected

; Task goal: Place each colored disc into the matching colored hole (red disc into red hole, yellow disc into yellow hole, blue disc into blue hole).