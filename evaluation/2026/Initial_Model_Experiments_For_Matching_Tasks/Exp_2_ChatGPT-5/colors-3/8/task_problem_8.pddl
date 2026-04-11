(define (problem task_color_match_right_top_three)
  (:domain shoebox-simple)
  (:objects
    init_area_left - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    slot_right_top_red - target
    slot_right_top_yellow - target
    slot_right_top_blue - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free slot_right_top_red)
    (free slot_right_top_yellow)
    (free slot_right_top_blue)
  )
  (:goal
    (and
      ; color-matching requirement: each colored disc must end up in the slot marked with the same color
      (in_target disc_red slot_right_top_red)
      (in_target disc_yellow slot_right_top_yellow)
      (in_target disc_blue slot_right_top_blue)
      ; explicit emptiness/non-emptiness conditions
      (not (in_init_container disc_red))
      (not (in_init_container disc_yellow))
      (not (in_init_container disc_blue))
      (not (free slot_right_top_red))
      (not (free slot_right_top_yellow))
      (not (free slot_right_top_blue))
    )
  )
)
; Plan (color-match each disc to its labeled top-right slot):
; move_to_target disc_red slot_right_top_red
; move_to_target disc_yellow slot_right_top_yellow
; move_to_target disc_blue slot_right_top_blue

; Task goal: Place the three colored wooden discs from the left init area into the three top-right circular targets labeled by colored squares so that color matches (red→red, yellow→yellow, blue→blue). The init area becomes empty and each labeled target becomes occupied.

; Objects identified:
; - Items (movable): disc_red, disc_yellow, disc_blue
; - Targets (fixed, capacity 1): slot_right_top_red (left of the three labeled slots), slot_right_top_yellow (middle), slot_right_top_blue (right)
; - Init container: init_area_left (left slotted area)

; Verification summary:
; Total number of objects: 6
; Recounted list: disc_red, disc_yellow, disc_blue, slot_right_top_red, slot_right_top_yellow, slot_right_top_blue
; Notes: The three discs are partially inserted in slots but clearly visible; no other task-relevant items/targets are used.