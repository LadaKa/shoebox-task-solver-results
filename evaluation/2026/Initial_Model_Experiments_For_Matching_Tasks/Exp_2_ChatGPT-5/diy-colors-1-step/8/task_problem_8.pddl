(define (problem shoebox_color_match_1)
  (:domain shoebox-simple)
  (:objects
    init_tray_left_inner - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    tray_top_green - target
    tray_middle_red - target
    tray_bottom_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free tray_top_green)
    (free tray_middle_red)
    (free tray_bottom_blue)
  )
  (:goal
    (and
      ; color-matching: each colored ball must be in the tray with the same-colored tab
      (in_target ball_green tray_top_green)
      (in_target ball_red tray_middle_red)
      (in_target ball_blue tray_bottom_blue)
      ; container empty and targets non-empty
      (not (in_init_container ball_green))
      (not (in_init_container ball_red))
      (not (in_init_container ball_blue))
      (not (free tray_top_green))
      (not (free tray_middle_red))
      (not (free tray_bottom_blue))
    )
  )
)
; Plan (actions to solve):
; move_to_target ball_green tray_top_green
; move_to_target ball_red tray_middle_red
; move_to_target ball_blue tray_bottom_blue

; Task goal: Place each colored foam ball into the tray whose end tab has the same color (green→top tray, red→middle tray, blue→bottom tray). The inner left box is the initial container.

; Verification summary:
; Total number of objects: 7
; Objects: init_tray_left_inner, ball_red, ball_green, ball_blue, tray_top_green, tray_middle_red, tray_bottom_blue
; All items fully visible; no uncertainties or partially visible objects