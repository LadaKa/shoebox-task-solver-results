(define (problem problem_image)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disk_triangle - item
    disk_square - item
    disk_pentagon - item
    target_3 - target
    target_triangle - target
    target_square - target
    target_4 - target
    target_6 - target
    target_pentagon - target
  )
  (:init
    (in_init_container disk_triangle)
    (in_init_container disk_square)
    (in_init_container disk_pentagon)
    (free target_3)
    (free target_triangle)
    (free target_square)
    (free target_4)
    (free target_6)
    (free target_pentagon)
  )
  (:goal
    (and
     (not (in_init_container disk_triangle))
     (not (in_init_container disk_square))
     (not (in_init_container disk_pentagon))
     (not (free target_triangle))
     (not (free target_square))
     (not (free target_pentagon))
     (in_target disk_triangle target_triangle)
     (in_target disk_square target_square)
     (in_target disk_pentagon target_pentagon)
    )
  )
)

; Task goal: Match each disk with the corresponding target based on shape or number.
; Verifying placement for:
; - Disk with triangle to target with triangle.
; - Disk with square to target with square.
; - Disk with pentagon to target with pentagon.

; Action plan:
; move_to_target disk_triangle target_triangle
; move_to_target disk_square target_square
; move_to_target disk_pentagon target_pentagon

; Verification summary:
; Total number of objects: 9
; Objects: disk_triangle, disk_square, disk_pentagon, target_3, target_triangle, target_square, target_4, target_6, target_pentagon
; All items were clearly visible and identifiable.