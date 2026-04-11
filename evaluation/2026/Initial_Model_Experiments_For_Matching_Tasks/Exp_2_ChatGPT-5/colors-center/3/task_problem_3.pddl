(define (problem color_sorting_tray_1)
  (:domain shoebox-simple)
  (:objects
    initial_bowl - init_container
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
      ; color-matching placements
      (in_target ball_yellow cup_top_left_yellow)
      (in_target ball_blue cup_top_right_blue)
      (in_target ball_green cup_bottom_left_green)
      (in_target ball_red cup_bottom_right_red)
      ; container empty and each target non-empty
      (not (in_init_container ball_red))
      (not (in_init_container ball_blue))
      (not (in_init_container ball_yellow))
      (not (in_init_container ball_green))
      (not (free cup_top_left_yellow))
      (not (free cup_top_right_blue))
      (not (free cup_bottom_left_green))
      (not (free cup_bottom_right_red))
    )
  )
)
; Plan (color-based sorting: move each pom-pom to the cup with the matching color label)
; move_to_target ball_yellow cup_top_left_yellow
; move_to_target ball_blue cup_top_right_blue
; move_to_target ball_green cup_bottom_left_green
; move_to_target ball_red cup_bottom_right_red

; Task goal: Sort colored pom-poms from the central bowl into side cups marked with matching color stickers; end with one ball in each cup and the central bowl empty.

; Verification summary:
; Total number of objects: 9
; Objects: initial_bowl, ball_red, ball_blue, ball_yellow, ball_green, cup_top_left_yellow, cup_top_right_blue, cup_bottom_left_green, cup_bottom_right_red
; All objects are clearly visible; none are uncertain or partially visible.