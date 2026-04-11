(define (problem shoebox_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_1 - item
    ball_2 - item
    ball_3 - item
    bowl_1 - target
    bowl_2 - target
    bowl_3 - target
  )
  (:init
    (in_init_container ball_1)
    (in_init_container ball_2)
    (in_init_container ball_3)
    (free bowl_1)
    (free bowl_2)
    (free bowl_3)
  )
  (:goal
    (and
      (in_target ball_1 bowl_1)
      (in_target ball_2 bowl_2)
      (in_target ball_3 bowl_3)
    )
  )
)

; move_to_target ball_1 bowl_1
; move_to_target ball_2 bowl_2
; move_to_target ball_3 bowl_3

; Verification summary:
; Total number of objects: 6
; Objects: ball_1, ball_2, ball_3, bowl_1, bowl_2, bowl_3
; All items and targets are fully visible and clearly numbered.