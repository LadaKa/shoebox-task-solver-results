(define (problem shoebox_color_match_3)
  (:domain shoebox-simple)
  (:objects
    init_tray_left - init_container
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
      (not (in_init_container ball_green))
      (not (in_init_container ball_red))
      (not (in_init_container ball_blue))
      (not (free tray_right_top_green))
      (not (free tray_right_middle_red))
      (not (free tray_right_bottom_blue))
    )
  )
)
; Action plan (color-matching: ball color -> same-colored tray):
; move_to_target ball_green tray_right_top_green
; move_to_target ball_red tray_right_middle_red
; move_to_target ball_blue tray_right_bottom_blue

; Task goal: empty the init tray and place each colored ball into the tray with the same colored end flap (top=green, middle=red, bottom=blue).

; Verification summary:
; Total number of objects: 7
; Objects: init_tray_left, ball_red, ball_green, ball_blue, tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue
; No uncertainties or partially visible items.