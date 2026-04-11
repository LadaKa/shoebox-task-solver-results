(define (problem color_sort_pompoms_by_cup_labels)
  (:domain shoebox-simple)
  (:objects
    initial_container_center - init_container
    pompom_red - item
    pompom_blue - item
    pompom_yellow - item
    pompom_green - item
    cup_top_left_yellow - target
    cup_bottom_left_green - target
    cup_top_right_blue - target
    cup_bottom_right_red - target
  )
  (:init
    (in_init_container pompom_red)
    (in_init_container pompom_blue)
    (in_init_container pompom_yellow)
    (in_init_container pompom_green)
    (free cup_top_left_yellow)
    (free cup_bottom_left_green)
    (free cup_top_right_blue)
    (free cup_bottom_right_red)
  )
  (:goal
    (and
      ; color-matching requirement
      (in_target pompom_yellow cup_top_left_yellow)
      (in_target pompom_green cup_bottom_left_green)
      (in_target pompom_blue cup_top_right_blue)
      (in_target pompom_red cup_bottom_right_red)
      ; container must be empty and each target non-empty
      (not (in_init_container pompom_red))
      (not (in_init_container pompom_blue))
      (not (in_init_container pompom_yellow))
      (not (in_init_container pompom_green))
      (not (free cup_top_left_yellow))
      (not (free cup_bottom_left_green))
      (not (free cup_top_right_blue))
      (not (free cup_bottom_right_red))
    )
  )
)

; Action plan (one item per matching color-labeled cup)
; move_to_target pompom_yellow cup_top_left_yellow
; move_to_target pompom_green cup_bottom_left_green
; move_to_target pompom_blue cup_top_right_blue
; move_to_target pompom_red cup_bottom_right_red

; Task goal: Sort the four colored pompoms from the central init_container into the four outer cups labeled with matching color stickers (yellow, green, blue, red), leaving the init_container empty and each target non-empty.
; Object identification: central round cup = init_container; four outer cups = targets with colored labels; four colored pompoms = items.

; Verification summary:
; Total number of objects: 9
; Objects: initial_container_center; pompom_red, pompom_blue, pompom_yellow, pompom_green; cup_top_left_yellow, cup_bottom_left_green, cup_top_right_blue, cup_bottom_right_red.
; All objects fully visible; no uncertainties.