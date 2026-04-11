(define (problem task_color_sort_three_trays)
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
      ; property-based matching by color: each colored ball must be in the tray with the same colored tab
      (in_target ball_green tray_right_top_green)
      (in_target ball_red tray_right_middle_red)
      (in_target ball_blue tray_right_bottom_blue)
      ; also require generic task completion conditions
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; move_to_target ball_green tray_right_top_green
; move_to_target ball_red tray_right_middle_red
; move_to_target ball_blue tray_right_bottom_blue

; Task goal: empty the initial container and place each colored ball into the tray whose end-tab has the same color.
; Object identification:
; - Items (movable): ball_red, ball_green, ball_blue (seen inside the inner box on the left).
; - Targets (fixed receptacles): tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue (three right-hand trays with colored tabs).
; Verification summary:
; - Total number of objects: 7
; - Objects: initial_container, ball_red, ball_green, ball_blue, tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue
; - No uncertainties or partially visible items.