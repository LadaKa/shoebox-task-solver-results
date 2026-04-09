(define (problem problem_example)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_blue - item
    ball_yellow - item
    ball_green - item
    bowl_red - target
    bowl_blue - target
    bowl_yellow - target
    bowl_green - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_blue)
    (in_init_container ball_yellow)
    (in_init_container ball_green)
    (free bowl_red)
    (free bowl_blue)
    (free bowl_yellow)
    (free bowl_green)
  )
  (:goal
    (forall (?y - target)
        (not (free ?y))
    )
    (forall (?x - item)
        (not (in_init_container ?x))
    )
  )
)
; move_to_target ball_red bowl_red
; move_to_target ball_blue bowl_blue
; move_to_target ball_yellow bowl_yellow
; move_to_target ball_green bowl_green

; Verification summary:
; Total number of objects: 9
; Objects: ball_red, ball_blue, ball_yellow, ball_green, bowl_red, bowl_blue, bowl_yellow, bowl_green, initial_container
; All objects were clearly visible.