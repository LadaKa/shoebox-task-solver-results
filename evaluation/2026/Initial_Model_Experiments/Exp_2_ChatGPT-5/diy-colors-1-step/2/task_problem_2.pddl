(define (problem shoebox_color_match_01)
  (:domain shoebox-simple)
  (:objects
    initial_container_left - init_container
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
      ; color-matching placements
      (in_target ball_green tray_top_green)
      (in_target ball_red tray_middle_red)
      (in_target ball_blue tray_bottom_blue)
      ; init container empty and each target non-empty
      (not (in_init_container ball_red))
      (not (in_init_container ball_green))
      (not (in_init_container ball_blue))
      (not (free tray_top_green))
      (not (free tray_middle_red))
      (not (free tray_bottom_blue))
    )
  )
)

; Plan (color match: ball -> tray with same colored tab, one per tray):
; move_to_target ball_green tray_top_green
; move_to_target ball_red tray_middle_red
; move_to_target ball_blue tray_bottom_blue

; Task goal: Place each colored ball into the tray that has the tab of the same color (green=top, red=middle, blue=bottom). The left inner box is the initial container holding all balls.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container_left, ball_red, ball_green, ball_blue, tray_top_green, tray_middle_red, tray_bottom_blue
; No uncertainties or partially visible items