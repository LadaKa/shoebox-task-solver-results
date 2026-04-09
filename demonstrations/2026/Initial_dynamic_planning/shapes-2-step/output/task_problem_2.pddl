(define (problem shoebox_example)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    circle - item
    triangle - item
    square - item
    pole_circle - target
    pole_triangle - target
    pole_square - target
  )
  (:init
    (in_target triangle pole_triangle)
    (in_target circle pole_circle)
    (in_target square pole_square)
  )
  (:goal
    (and
      (in_target circle pole_circle)
      (in_target triangle pole_triangle)
      (in_target square pole_square)
    )
  )
)
; Verification summary:
; Total number of objects: 6
; Objects: circle, triangle, square, pole_circle, pole_triangle, pole_square
; No uncertainties or partially visible items

; Task goal: Match each shape to the corresponding pole based on its visual representation.
; Objects identified: Three shapes (circle, triangle, square) and three poles for corresponding shapes.