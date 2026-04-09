(define (problem shoebox-task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    item_triangle - item
    item_pentagon - item
    item_rhombus - item
    target_3 - target
    target_triangle - target
    target_rhombus - target
    target_4 - target
    target_6 - target
    target_pentagon - target
  )
  (:init
    (in_init_container item_triangle)
    (in_init_container item_pentagon)
    (in_init_container item_rhombus)
    (free target_3)
    (free target_triangle)
    (free target_rhombus)
    (free target_4)
    (free target_6)
    (free target_pentagon)
  )
  (:goal
    (and
      (in_target item_triangle target_triangle)
      (in_target item_pentagon target_pentagon)
      (in_target item_rhombus target_rhombus)
    )
  )
)

; move_to_target item_triangle target_triangle
; move_to_target item_pentagon target_pentagon
; move_to_target item_rhombus target_rhombus

; Verification summary:
; Total number of objects: 9
; Objects: item_triangle, item_pentagon, item_rhombus, target_3, target_triangle, target_rhombus, target_4, target_6, target_pentagon
; No uncertainties. All objects are clearly visible.
  
; Task goal: Place each distinct item into its respective target indicated by matching shapes.