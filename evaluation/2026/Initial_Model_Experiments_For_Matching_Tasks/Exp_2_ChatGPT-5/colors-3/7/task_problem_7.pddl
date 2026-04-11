(define (problem shoebox_color_match_3)
  (:domain shoebox-simple)
  (:objects
    init_slot - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    hole_top_left_red - target
    hole_top_middle_yellow - target
    hole_top_right_blue - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free hole_top_left_red)
    (free hole_top_middle_yellow)
    (free hole_top_right_blue)
  )
  (:goal
    (and
      ; color-matching placements
      (in_target disc_red hole_top_left_red)
      (in_target disc_yellow hole_top_middle_yellow)
      (in_target disc_blue hole_top_right_blue)
      ; container empty and each target filled
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; move_to_target disc_red hole_top_left_red
; move_to_target disc_yellow hole_top_middle_yellow
; move_to_target disc_blue hole_top_right_blue

; Task goal: put each colored disc into the same-colored target well (red-left, yellow-middle, blue-right). After placement, the init container is empty and all targets are occupied.

; Object identification notes:
; - Items: 3 wooden discs (red, yellow, blue) currently in the left slot area (treated as the init container).
; - Targets: 3 top-row circular wells on the right, labeled with colored squares: red (left), yellow (middle), blue (right). The unlabeled wells are not targets for this task.

; Verification summary:
; Total number of objects: 7
; Objects: init_slot, disc_red, disc_yellow, disc_blue, hole_top_left_red, hole_top_middle_yellow, hole_top_right_blue
; Items are partially inserted but clearly visible; no uncertainties.