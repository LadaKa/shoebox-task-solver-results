(define (problem shoebox_task_color_match)
  (:domain shoebox-simple)
  (:objects
    init_bin - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    tray_right_top_green - target
    tray_right_middle_red - target
    tray_right_bottom_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free tray_right_top_green)
    (free tray_right_middle_red)
    (free tray_right_bottom_blue)
  )
  (:goal
    (and
      (in_target ball_green tray_right_top_green)
      (in_target ball_red tray_right_middle_red)
      (in_target ball_blue tray_right_bottom_blue)
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; move_to_target ball_green tray_right_top_green
; move_to_target ball_red tray_right_middle_red
; move_to_target ball_blue tray_right_bottom_blue

; Task goal: color-matching — place each colored ball into the tray whose end tab has the same color (green=top, red=middle, blue=bottom). The init container must be empty and each tray non-empty in the goal.

; Verification summary:
; Total number of objects: 7
; Objects: init_bin, ball_red, ball_green, ball_blue, tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue
; No uncertainties or partially visible items