(define (problem tray_color_sort_1)
  (:domain shoebox-simple)
  (:objects
    center_bowl - init_container
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
      ; color-matching requirements
      (in_target pom_yellow cup_top_left_yellow)
      (in_target pom_green cup_bottom_left_green)
      (in_target pom_blue cup_top_right_blue)
      (in_target pom_red cup_bottom_right_red)
      ; container empty and each target non-empty
      (not (in_init_container pom_red))
      (not (in_init_container pom_blue))
      (not (in_init_container pom_yellow))
      (not (in_init_container pom_green))
      (not (free cup_top_left_yellow))
      (not (free cup_bottom_left_green))
      (not (free cup_top_right_blue))
      (not (free cup_bottom_right_red))
    )
  )
)

; Action plan (one item per color-labeled cup):
; move_to_target pom_yellow cup_top_left_yellow
; move_to_target pom_green cup_bottom_left_green
; move_to_target pom_blue cup_top_right_blue
; move_to_target pom_red cup_bottom_right_red

; Task goal: Sort each colored pom-pom from the center bowl into the rim cup with the matching color sticker; the center bowl becomes empty and all rim cups become non-empty.

; Object identification:
; - Items: pom_red, pom_blue, pom_yellow, pom_green (four colored pom-poms in the center bowl)
; - Targets: cup_top_left_yellow, cup_bottom_left_green, cup_top_right_blue, cup_bottom_right_red (four rim cups marked with matching color stickers)
; - Init container: center_bowl (the central round bowl)

; Matching rule used in goal: item color must match the sticker color of its target cup (expressed via specific in_target pairs).

; Verification summary:
; Total number of objects: 9
; Objects: center_bowl, pom_red, pom_blue, pom_yellow, pom_green, cup_top_left_yellow, cup_bottom_left_green, cup_top_right_blue, cup_bottom_right_red
; All objects clearly visible; no uncertainties or partially visible items.