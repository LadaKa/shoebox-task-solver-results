(define (problem color_sort_tray_01)
  (:domain shoebox-simple)
  (:objects
    central_bowl - init_container
    pom_red - item
    pom_blue - item
    pom_yellow - item
    pom_green - item
    cup_top_left_yellow - target
    cup_bottom_left_green - target
    cup_top_right_blue - target
    cup_bottom_right_red - target
  )
  (:init
    (in_init_container pom_red)
    (in_init_container pom_blue)
    (in_init_container pom_yellow)
    (in_init_container pom_green)
    (free cup_top_left_yellow)
    (free cup_bottom_left_green)
    (free cup_top_right_blue)
    (free cup_bottom_right_red)
  )
  (:goal
    (and
      ; color-matching rule: each pom goes into the cup marked with the same color
      (in_target pom_yellow cup_top_left_yellow)
      (in_target pom_green cup_bottom_left_green)
      (in_target pom_blue cup_top_right_blue)
      (in_target pom_red cup_bottom_right_red)
      ; goal also requires empty init_container and all targets non-empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (one pom per color-matched cup):
; move_to_target pom_yellow cup_top_left_yellow
; move_to_target pom_green cup_bottom_left_green
; move_to_target pom_blue cup_top_right_blue
; move_to_target pom_red cup_bottom_right_red

; Comments:
; - Task goal: sort colored pom-poms from the central bowl into cups labeled with matching color stickers.
; - Object identification: 4 items (pom_poms: red, blue, yellow, green); 4 targets (cups with stickers: yellow TL, green BL, blue TR, red BR); 1 init_container (central bowl).

; Verification summary:
; Total number of objects: 9
; Objects listed: central_bowl; pom_red, pom_blue, pom_yellow, pom_green; cup_top_left_yellow, cup_bottom_left_green, cup_top_right_blue, cup_bottom_right_red
; No objects are uncertain or partially visible.