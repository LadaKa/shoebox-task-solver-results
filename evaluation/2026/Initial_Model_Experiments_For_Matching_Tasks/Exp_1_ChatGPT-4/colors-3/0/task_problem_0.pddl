(define (problem shoebox-problem-1)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    circle_red - item
    circle_yellow - item
    circle_blue - item
    target_red - target
    target_yellow - target
    target_blue - target
  )
  (:init
    (in_init_container circle_red)
    (in_init_container circle_yellow)
    (in_init_container circle_blue)
    (free target_red)
    (free target_yellow)
    (free target_blue)
  )
  (:goal
    (and
      (in_target circle_red target_red)
      (in_target circle_yellow target_yellow)
      (in_target circle_blue target_blue)
    )
  )
)

; move_to_target circle_red target_red
; move_to_target circle_yellow target_yellow
; move_to_target circle_blue target_blue

; Verification summary:
; Total number of objects: 6
; Objects: circle_red, circle_yellow, circle_blue, target_red, target_yellow, target_blue
; All items are clearly visible and identified with color matching targets.