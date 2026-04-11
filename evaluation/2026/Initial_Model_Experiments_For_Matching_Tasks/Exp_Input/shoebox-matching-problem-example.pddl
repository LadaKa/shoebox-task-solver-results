(define (problem shoebox_image_task_1)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
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
      ; color-matching rule: each colored disc goes into the hole marked with the same color.
      (in_target disc_red hole_top_left_red)
      (in_target disc_yellow hole_top_middle_yellow)
      (in_target disc_blue hole_top_right_blue)
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Action plan (color match):
; move_to_target disc_red hole_top_left_red
; move_to_target disc_yellow hole_top_middle_yellow
; move_to_target disc_blue hole_top_right_blue

; Comments:
; Goal: place each colored wooden disc into the circular target with the same color marker (red, yellow, blue). The init container must end empty and every marked target non-empty.
; Objects identified: 3 movable colored discs (red, yellow, blue) and 3 marked target holes (top row: left=red, middle=yellow, right=blue). Other circular recesses are unmarked and not part of the task.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, disc_red, disc_yellow, disc_blue, hole_top_left_red, hole_top_middle_yellow, hole_top_right_blue
; No uncertainties or partially visible items