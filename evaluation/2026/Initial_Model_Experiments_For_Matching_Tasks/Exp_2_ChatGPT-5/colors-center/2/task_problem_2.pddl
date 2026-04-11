(define (problem color_sort_tray_01)
  (:domain shoebox-simple)
  (:objects
    center_bowl_init - init_container
    pompom_red - item
    pompom_blue - item
    pompom_yellow - item
    pompom_green - item
    cup_top_left_yellow_sticker - target
    cup_top_right_blue_sticker - target
    cup_bottom_right_red_sticker - target
    cup_bottom_left_green_sticker - target
  )
  (:init
    (in_init_container pompom_red)
    (in_init_container pompom_blue)
    (in_init_container pompom_yellow)
    (in_init_container pompom_green)
    (free cup_top_left_yellow_sticker)
    (free cup_top_right_blue_sticker)
    (free cup_bottom_right_red_sticker)
    (free cup_bottom_left_green_sticker)
  )
  (:goal
    (and
      ; color-matching placements inferred from colored stickers on cups
      (in_target pompom_yellow cup_top_left_yellow_sticker)
      (in_target pompom_blue cup_top_right_blue_sticker)
      (in_target pompom_red cup_bottom_right_red_sticker)
      (in_target pompom_green cup_bottom_left_green_sticker)
      ; init_container must be empty and every target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (color-match each pompom to the cup with the same colored sticker):
; move_to_target pompom_yellow cup_top_left_yellow_sticker
; move_to_target pompom_blue cup_top_right_blue_sticker
; move_to_target pompom_red cup_bottom_right_red_sticker
; move_to_target pompom_green cup_bottom_left_green_sticker

; Task goal: one pompom in each outer cup, matched by color to the sticker; center bowl becomes empty.

; Verification summary:
; Total number of objects: 9
; Items: pompom_red, pompom_blue, pompom_yellow, pompom_green
; Init container: center_bowl_init
; Targets: cup_top_left_yellow_sticker, cup_top_right_blue_sticker, cup_bottom_right_red_sticker, cup_bottom_left_green_sticker
; All objects clearly visible; no uncertainties.