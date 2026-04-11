(define (problem color_match_three_discs)
  (:domain shoebox-simple)
  (:objects
    left_slotted_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    target_red_top_left_square - target
    target_yellow_top_middle_square - target
    target_blue_top_right_square - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free target_red_top_left_square)
    (free target_yellow_top_middle_square)
    (free target_blue_top_right_square)
  )
  (:goal
    (and
      ; container empty and every target filled
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
      ; color-matching placement inferred from visible colored markers
      (in_target disc_red target_red_top_left_square)
      (in_target disc_yellow target_yellow_top_middle_square)
      (in_target disc_blue target_blue_top_right_square)
    )
  )
)
; Action plan (color-matching):
; move_to_target disc_red target_red_top_left_square
; move_to_target disc_yellow target_yellow_top_middle_square
; move_to_target disc_blue target_blue_top_right_square

; Task goal: place each colored wooden disc into the correspondingly colored marked spot so that all marked targets are non-empty and the left container becomes empty.

; Object identification notes:
; - Items: three wooden discs (red, yellow, blue) currently partially inserted in the left slotted container.
; - Targets: three top-row marked positions on the right (red square above left hole, yellow above middle, blue above right).

; Verification summary:
; Total number of objects: 7
; Objects: left_slotted_container, disc_red, disc_yellow, disc_blue, target_red_top_left_square, target_yellow_top_middle_square, target_blue_top_right_square
; Partially visible: the three discs are partially visible (protruding from slots). No uncertain items used; unmarked circular wells on the board are treated as inactive features, not targets for this task.