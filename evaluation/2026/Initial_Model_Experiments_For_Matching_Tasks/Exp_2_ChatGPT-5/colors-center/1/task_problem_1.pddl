(define (problem shoebox-image-task)
  (:domain shoebox-simple)
  (:objects
    center_bowl_init - init_container
    pom_red - item
    pom_blue - item
    pom_green - item
    pom_yellow - item
    cup_left_top_yellow - target
    cup_right_top_blue - target
    cup_right_bottom_red - target
    cup_left_bottom_green - target
  )
  (:init
    (in_init_container pom_red)
    (in_init_container pom_blue)
    (in_init_container pom_green)
    (in_init_container pom_yellow)
    (free cup_left_top_yellow)
    (free cup_right_top_blue)
    (free cup_right_bottom_red)
    (free cup_left_bottom_green)
  )
  (:goal
    (and
      ; color-matching rule: each pom goes to the cup with the same color sticker
      (in_target pom_yellow cup_left_top_yellow)
      (in_target pom_blue cup_right_top_blue)
      (in_target pom_red cup_right_bottom_red)
      (in_target pom_green cup_left_bottom_green)
      ; init container empty and each target non-empty
      (not (in_init_container pom_yellow))
      (not (in_init_container pom_blue))
      (not (in_init_container pom_red))
      (not (in_init_container pom_green))
      (not (free cup_left_top_yellow))
      (not (free cup_right_top_blue))
      (not (free cup_right_bottom_red))
      (not (free cup_left_bottom_green))
    )
  )
)

; Action plan (apply color-matching, empty the center bowl):
; move_to_target pom_yellow cup_left_top_yellow
; move_to_target pom_blue cup_right_top_blue
; move_to_target pom_red cup_right_bottom_red
; move_to_target pom_green cup_left_bottom_green

; Comments:
; - Task goal: sort all four colored pom-poms from the center bowl into the side cups with matching colored stickers.
; - Targets (with positions): yellow=left-top, blue=right-top, red=right-bottom, green=left-bottom.

; Verification summary:
; Total number of objects: 9
; Objects listed: center_bowl_init; pom_red, pom_blue, pom_green, pom_yellow; cup_left_top_yellow, cup_right_top_blue, cup_right_bottom_red, cup_left_bottom_green.
; All objects are clearly visible; none uncertain or partially visible.