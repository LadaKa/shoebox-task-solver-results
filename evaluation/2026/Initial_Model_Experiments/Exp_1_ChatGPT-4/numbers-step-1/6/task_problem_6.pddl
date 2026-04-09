(define (problem shoebox_task)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    item_1 - item
    item_2 - item
    item_3 - item
    target_1 - target
    target_2 - target
    target_3 - target
  )
  (:init
    (in_init_container item_1)
    (in_init_container item_2)
    (in_init_container item_3)
    (free target_1)
    (free target_2)
    (free target_3)
  )
  (:goal
    (and
      (in_target item_1 target_1)
      (in_target item_2 target_2)
      (in_target item_3 target_3)
    )
  )
)

; move_to_target item_1 target_1
; move_to_target item_2 target_2
; move_to_target item_3 target_3

; Verification summary:
; Total number of objects: 6
; Objects: 3 items (item_1, item_2, item_3), 3 targets (target_1, target_2, target_3)
; Items are matched with targets based on their numerical labels
; All objects are clearly visible without uncertainty