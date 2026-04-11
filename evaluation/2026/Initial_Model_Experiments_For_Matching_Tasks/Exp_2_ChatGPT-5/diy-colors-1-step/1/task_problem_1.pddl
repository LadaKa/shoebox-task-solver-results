(define (problem shoebox_color_match_3)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    tray_top_green_tab - target
    tray_middle_red_tab - target
    tray_bottom_blue_tab - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free tray_top_green_tab)
    (free tray_middle_red_tab)
    (free tray_bottom_blue_tab)
  )
  (:goal
    (and
      ; color-matching placements required by the scene
      (in_target ball_green tray_top_green_tab)
      (in_target ball_red tray_middle_red_tab)
      (in_target ball_blue tray_bottom_blue_tab)
      ; container empty and each target non-empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (color-matching):
; move_to_target ball_green tray_top_green_tab
; move_to_target ball_red tray_middle_red_tab
; move_to_target ball_blue tray_bottom_blue_tab

; Task goal: Place each colored ball into the tray with the tab of the same color (green→top tray, red→middle tray, blue→bottom tray). The init_container must end empty and every tray occupied.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, ball_red, ball_green, ball_blue, tray_top_green_tab, tray_middle_red_tab, tray_bottom_blue_tab
; All objects fully visible; no uncertainties.