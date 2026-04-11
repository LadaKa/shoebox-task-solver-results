(define (problem shoebox-arithmetic-problem-1)
  (:domain shoebox-arithmetic)

  (:objects
    item_1 item_2 item_3 item_4 item_5 item_6 - item

    target_1 target_2 target_3 - target

    t1_s1
    t2_s1 t2_s2
    t3_s1 t3_s2 t3_s3 - slot
  )

  (:init
    ;; all items start in init container
    (in_init_container item_1)
    (in_init_container item_2)
    (in_init_container item_3)
    (in_init_container item_4)
    (in_init_container item_5)
    (in_init_container item_6)

    ;; slot structure (capacity encoding)
    (belongs t1_s1 target_1)

    (belongs t2_s1 target_2)
    (belongs t2_s2 target_2)

    (belongs t3_s1 target_3)
    (belongs t3_s2 target_3)
    (belongs t3_s3 target_3)

    ;; all slots initially free
    (slot_free t1_s1)

    (slot_free t2_s1)
    (slot_free t2_s2)

    (slot_free t3_s1)
    (slot_free t3_s2)
    (slot_free t3_s3)
  )

  (:goal
    (and
      ;; target_1 must contain exactly 1 item
      (slot_occupied t1_s1)

      ;; target_2 must contain exactly 2 items
      (slot_occupied t2_s1)
      (slot_occupied t2_s2)

      ;; target_3 must contain exactly 3 items
      (slot_occupied t3_s1)
      (slot_occupied t3_s2)
      (slot_occupied t3_s3)
    )
  )
)

