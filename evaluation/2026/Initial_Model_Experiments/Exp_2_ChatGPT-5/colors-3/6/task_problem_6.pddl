(define (problem task_color_matched_top_row)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    bowl_left_top_under_red_square - target
    bowl_center_top_under_yellow_square - target
    bowl_right_top_under_blue_square - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free bowl_left_top_under_red_square)
    (free bowl_center_top_under_yellow_square)
    (free bowl_right_top_under_blue_square)
  )
  (:goal
    (and
      ; color-matching requirement derived from the colored squares above the top-row bowls
      (in_target disc_red bowl_left_top_under_red_square)
      (in_target disc_yellow bowl_center_top_under_yellow_square)
      (in_target disc_blue bowl_right_top_under_blue_square)
      ; generic task conditions
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (color-to-color, left-to-right):
; move_to_target disc_red bowl_left_top_under_red_square
; move_to_target disc_yellow bowl_center_top_under_yellow_square
; move_to_target disc_blue bowl_right_top_under_blue_square

; Task goal (comment):
; Place each colored disc into the top-row bowl directly under the square of the same color:
; red->left bowl under red square, yellow->center under yellow square, blue->right under blue square.

; Verification summary (comment):
; Total number of objects: 7
; Objects: initial_container, disc_red, disc_yellow, disc_blue,
;          bowl_left_top_under_red_square, bowl_center_top_under_yellow_square, bowl_right_top_under_blue_square
; Notes: The board shows additional circular cutouts, but only the three top-row bowls with color markers are treated as targets for this task. No uncertainties or partially visible items among listed task objects.