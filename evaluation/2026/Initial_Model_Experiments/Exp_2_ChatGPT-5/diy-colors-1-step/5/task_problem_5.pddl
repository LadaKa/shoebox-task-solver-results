(define (problem shoebox_color_match_3)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
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
      ; init container is empty
      (not (in_init_container ball_red))
      (not (in_init_container ball_green))
      (not (in_init_container ball_blue))
      ; color-matching placements inferred from colored tabs on targets
      (in_target ball_green tray_right_top_green)
      (in_target ball_red tray_right_middle_red)
      (in_target ball_blue tray_right_bottom_blue)
      ; every target is non-empty
      (not (free tray_right_top_green))
      (not (free tray_right_middle_red))
      (not (free tray_right_bottom_blue))
    )
  )
)
; Plan (color-matching):
; move_to_target ball_green tray_right_top_green
; move_to_target ball_red tray_right_middle_red
; move_to_target ball_blue tray_right_bottom_blue

; Task goal: Place each colored ball into the target tray with the matching colored tab (green→top tray, red→middle tray, blue→bottom tray). The initial white box on the left is the init_container; the three narrow trays on the right are the targets.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, ball_red, ball_green, ball_blue, tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue
; All objects clearly visible; none uncertain or partially visible.