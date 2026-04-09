(define (problem sort_pom_poms_by_color)
  (:domain shoebox-simple)
  (:objects
    center_bowl - init_container
    pom_red - item
    pom_blue - item
    pom_yellow - item
    pom_green - item
    cup_top_left_yellow - target
    cup_top_right_blue - target
    cup_bottom_left_green - target
    cup_bottom_right_red - target
  )
  (:init
    (in_init_container pom_red)
    (in_init_container pom_blue)
    (in_init_container pom_yellow)
    (in_init_container pom_green)
    (free cup_top_left_yellow)
    (free cup_top_right_blue)
    (free cup_bottom_left_green)
    (free cup_bottom_right_red)
  )
  (:goal
    (and
      ; color-matching requirement: each pom-pom goes to the cup with the same color sticker
      (in_target pom_yellow cup_top_left_yellow)
      (in_target pom_blue cup_top_right_blue)
      (in_target pom_green cup_bottom_left_green)
      (in_target pom_red cup_bottom_right_red)
      ; structural requirements of the task
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (one item per colored cup, matching by color):
; move_to_target pom_yellow cup_top_left_yellow
; move_to_target pom_blue cup_top_right_blue
; move_to_target pom_green cup_bottom_left_green
; move_to_target pom_red cup_bottom_right_red

; Task: Sort four colored pom-poms from the center bowl into the four side cups with matching color stickers (yellow TL, blue TR, green BL, red BR). One pom-pom per cup; center bowl ends empty.

; Verification summary:
; Total number of objects: 9
; Objects: center_bowl, pom_red, pom_blue, pom_yellow, pom_green, cup_top_left_yellow, cup_top_right_blue, cup_bottom_left_green, cup_bottom_right_red
; No uncertainties or partially visible items