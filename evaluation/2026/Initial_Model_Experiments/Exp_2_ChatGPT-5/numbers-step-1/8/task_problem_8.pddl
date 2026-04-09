(define (problem number_match_trays_1)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    coin_num_1 - item
    coin_num_2 - item
    coin_num_3 - item
    tray_right_top_label_1 - target
    tray_right_middle_label_2 - target
    tray_right_bottom_label_3 - target
  )
  (:init
    (in_init_container coin_num_1)
    (in_init_container coin_num_2)
    (in_init_container coin_num_3)
    (free tray_right_top_label_1)
    (free tray_right_middle_label_2)
    (free tray_right_bottom_label_3)
  )
  (:goal
    (and
      ; Matching rule: item number must equal the tray's label number
      (in_target coin_num_1 tray_right_top_label_1)
      (in_target coin_num_2 tray_right_middle_label_2)
      (in_target coin_num_3 tray_right_bottom_label_3)
      ; explicit emptiness of init_container and non-emptiness of each target
      (not (in_init_container coin_num_1))
      (not (in_init_container coin_num_2))
      (not (in_init_container coin_num_3))
      (not (free tray_right_top_label_1))
      (not (free tray_right_middle_label_2))
      (not (free tray_right_bottom_label_3))
    )
  )
)
; Plan (one item per labeled tray, top-to-bottom):
; move_to_target coin_num_1 tray_right_top_label_1
; move_to_target coin_num_2 tray_right_middle_label_2
; move_to_target coin_num_3 tray_right_bottom_label_3

; Task goal/comment: Place each numbered coin from the left init container into the right tray with the same number label (1→top, 2→middle, 3→bottom). The init container ends empty and each tray becomes non-empty.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, coin_num_1, coin_num_2, coin_num_3, tray_right_top_label_1, tray_right_middle_label_2, tray_right_bottom_label_3
; All objects clearly visible; no uncertainties or partially visible items.