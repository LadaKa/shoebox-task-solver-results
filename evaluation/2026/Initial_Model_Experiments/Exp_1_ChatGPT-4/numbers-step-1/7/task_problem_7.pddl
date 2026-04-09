(define (problem shoebox_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    circle_1_label_1 - item
    circle_2_label_2 - item
    circle_3_label_3 - item
    box_1 - target
    box_2 - target
    box_3 - target
  )
  (:init
    (in_init_container circle_1_label_1)
    (in_init_container circle_2_label_2)
    (in_init_container circle_3_label_3)
    (free box_1)
    (free box_2)
    (free box_3)
  )
  (:goal
    (and
      (in_target circle_1_label_1 box_1)
      (in_target circle_2_label_2 box_2)
      (in_target circle_3_label_3 box_3)
    )
  )
)

; move_to_target circle_1_label_1 box_1
; move_to_target circle_2_label_2 box_2
; move_to_target circle_3_label_3 box_3

; Verification summary:
; Total number of objects: 6
; Objects: circle_1_label_1, circle_2_label_2, circle_3_label_3, box_1, box_2, box_3
; All objects are clearly visible and identifiable.