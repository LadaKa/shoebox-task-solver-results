(define (problem shoebox_color_sort_01)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_blue - item
    ball_yellow - item
    ball_green - item
    cup_yellow_top_left - target
    cup_green_bottom_left - target
    cup_blue_top_right - target
    cup_red_bottom_right - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_blue)
    (in_init_container ball_yellow)
    (in_init_container ball_green)
    (free cup_yellow_top_left)
    (free cup_green_bottom_left)
    (free cup_blue_top_right)
    (free cup_red_bottom_right)
  )
  (:goal
    (and
      ; color-matching rule: each colored ball must go to the cup marked with the same color label
      (in_target ball_yellow cup_yellow_top_left)
      (in_target ball_green cup_green_bottom_left)
      (in_target ball_blue cup_blue_top_right)
      (in_target ball_red cup_red_bottom_right)
      ; structural goals: every target non-empty and init container empty
      (forall (?t - target) (not (free ?t)))
      (forall (?i - item) (not (in_init_container ?i)))
    )
  )
)
; Plan (sequence of applicable actions):
; move_to_target ball_yellow cup_yellow_top_left
; move_to_target ball_green cup_green_bottom_left
; move_to_target ball_blue cup_blue_top_right
; move_to_target ball_red cup_red_bottom_right

; Task goal: Sort four colored pom-pom balls from the center container into the four side cups labeled with matching colors (yellow TL, green BL, blue TR, red BR). End state: center empty; all cups filled.

; Verification summary:
; Total number of objects: 9
; Objects: initial_container, ball_red, ball_blue, ball_yellow, ball_green, cup_yellow_top_left, cup_green_bottom_left, cup_blue_top_right, cup_red_bottom_right
; Uncertainty: none; all objects clearly visible.