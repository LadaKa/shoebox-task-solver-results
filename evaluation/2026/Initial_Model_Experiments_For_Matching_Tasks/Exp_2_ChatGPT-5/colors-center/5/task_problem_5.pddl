(define (problem sort_pompoms_by_color)
  (:domain shoebox-simple)
  (:objects
    tray_center - init_container
    ball_red - item
    ball_blue - item
    ball_yellow - item
    ball_green - item
    cup_top_left_yellow - target
    cup_top_right_blue - target
    cup_bottom_left_green - target
    cup_bottom_right_red - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_blue)
    (in_init_container ball_yellow)
    (in_init_container ball_green)
    (free cup_top_left_yellow)
    (free cup_top_right_blue)
    (free cup_bottom_left_green)
    (free cup_bottom_right_red)
  )
  (:goal
    (and
      ; property-based matching by color and position
      (in_target ball_yellow cup_top_left_yellow)
      (in_target ball_blue cup_top_right_blue)
      (in_target ball_green cup_bottom_left_green)
      (in_target ball_red cup_bottom_right_red)
      ; general task goals
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?t - target) (not (free ?t)))
    )
  )
)
; Plan (one pompom per color-labeled cup):
; move_to_target ball_yellow cup_top_left_yellow
; move_to_target ball_blue cup_top_right_blue
; move_to_target ball_green cup_bottom_left_green
; move_to_target ball_red cup_bottom_right_red

; Task goal: Place each colored pompom into the cup with the matching color label; central well is the init_container, four side cups are targets.
; Objects identified: 4 pompoms (red, blue, yellow, green); 4 cups with color labels (top-left yellow, top-right blue, bottom-left green, bottom-right red); 1 central tray well as init_container.
; Verification summary:
; Total number of objects: 9
; Objects: tray_center, ball_red, ball_blue, ball_yellow, ball_green, cup_top_left_yellow, cup_top_right_blue, cup_bottom_left_green, cup_bottom_right_red
; All items fully visible; no uncertainties.