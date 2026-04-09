(define (problem color-sort-pompoms)
  (:domain shoebox-simple)
  (:objects
    central_bowl - init_container
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
      ; init_container is empty
      (not (in_init_container pompom_red))
      (not (in_init_container pompom_blue))
      (not (in_init_container pompom_yellow))
      (not (in_init_container pompom_green))
      ; each target has exactly one item (non-free)
      (not (free cup_top_left_yellow))
      (not (free cup_bottom_left_green))
      (not (free cup_top_right_blue))
      (not (free cup_bottom_right_red))
      ; color-matching assignment
      (in_target pompom_yellow cup_top_left_yellow)
      (in_target pompom_green cup_bottom_left_green)
      (in_target pompom_blue cup_top_right_blue)
      (in_target pompom_red cup_bottom_right_red)
    )
  )
)

; Action plan (color-match each pompom to its labeled cup)
; move_to_target pompom_yellow cup_top_left_yellow
; move_to_target pompom_green cup_bottom_left_green
; move_to_target pompom_blue cup_top_right_blue
; move_to_target pompom_red cup_bottom_right_red

; Task goal/comment:
; Sort colored pompoms from the central bowl (init_container) into the four side cups (targets)
; so that each pompom goes to the cup with the matching color sticker.

; Object identification/comment:
; Items (movable): pompom_red, pompom_blue, pompom_yellow, pompom_green (all visible inside central bowl).
; Targets (fixed): four peripheral cups labeled by color and position:
;   cup_top_left_yellow, cup_bottom_left_green, cup_top_right_blue, cup_bottom_right_red.
; Initial container: central_bowl (the large center cup).

; Verification summary:
; Total number of objects: 9
; Objects: central_bowl, pompom_red, pompom_blue, pompom_yellow, pompom_green,
;          cup_top_left_yellow, cup_bottom_left_green, cup_top_right_blue, cup_bottom_right_red
; All items and targets are fully visible; no uncertainties.