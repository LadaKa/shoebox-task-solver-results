(define (problem task_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    pom_red - item
    pom_blue - item
    pom_green - item
    pom_yellow - item
    bowl_yellow - target
    bowl_green - target
    bowl_blue - target
    bowl_red - target
  )
  (:init
    (in_init_container pom_red)
    (in_init_container pom_blue)
    (in_init_container pom_green)
    (in_init_container pom_yellow)
    (free bowl_yellow)
    (free bowl_green)
    (free bowl_blue)
    (free bowl_red)
  )
  (:goal
    (and
      (in_target pom_red bowl_red)
      (in_target pom_blue bowl_blue)
      (in_target pom_green bowl_green)
      (in_target pom_yellow bowl_yellow)
    )
  )
)

; Action Plan:
; move_to_target pom_red bowl_red
; move_to_target pom_blue bowl_blue
; move_to_target pom_green bowl_green
; move_to_target pom_yellow bowl_yellow

; Verification summary:
; Total number of objects: 8
; Objects: pom_red, pom_blue, pom_green, pom_yellow, bowl_yellow, bowl_green, bowl_blue, bowl_red
; All items and targets are visible and clearly distinguishable by color.
