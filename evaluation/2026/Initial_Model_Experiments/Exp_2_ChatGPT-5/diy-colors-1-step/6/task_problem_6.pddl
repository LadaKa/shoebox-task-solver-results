(define (problem color_sort_three_balls)
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
      ; global goal: init container empty and each target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
      ; matching rule: color-based assignment of items to targets
      (in_target ball_green tray_right_top_green)
      (in_target ball_red tray_right_middle_red)
      (in_target ball_blue tray_right_bottom_blue)
    )
  )
)
; Action plan (color-matching):
; move_to_target ball_green tray_right_top_green
; move_to_target ball_red tray_right_middle_red
; move_to_target ball_blue tray_right_bottom_blue

; Comments:
; Task goal: place each colored ball into the tray with the same colored end tab (green=top, red=middle, blue=bottom). After placement, the init_container is empty and every tray is occupied.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, ball_red, ball_green, ball_blue, tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue
; No uncertainties; all listed objects are clearly visible.