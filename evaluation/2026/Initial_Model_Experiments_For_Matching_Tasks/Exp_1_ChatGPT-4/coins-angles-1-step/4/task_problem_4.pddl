(define (problem shoebox_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    triangle_piece - item
    pentagon_piece - item
    parallelogram_piece - item
    target_3_triangle - target
    target_4_parallelogram - target
    target_6_pentagon - target
  )
  (:init
    (in_init_container triangle_piece)
    (in_init_container pentagon_piece)
    (in_init_container parallelogram_piece)
    (free target_3_triangle)
    (free target_4_parallelogram)
    (free target_6_pentagon)
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

; move_to_target triangle_piece target_3_triangle
; move_to_target parallelogram_piece target_4_parallelogram
; move_to_target pentagon_piece target_6_pentagon

; Verification summary:
; Total number of objects: 6
; Objects: triangle_piece, pentagon_piece, parallelogram_piece, target_3_triangle, target_4_parallelogram, target_6_pentagon
; All items are clearly visible, no uncertainties or partially visible items

; Task goal: Move each shape to its corresponding numbered target based on depicted numbers and shapes.