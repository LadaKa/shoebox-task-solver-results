(define (problem number_match_three_tokens)
  (:domain shoebox-simple)
  (:objects
    init_box_left - init_container
    token_num_1 - item
    token_num_2 - item
    token_num_3 - item
    tray_right_top_label_1 - target
    tray_right_middle_label_2 - target
    tray_right_bottom_label_3 - target
  )
  (:init
    (in_init_container token_num_1)
    (in_init_container token_num_2)
    (in_init_container token_num_3)
    (free tray_right_top_label_1)
    (free tray_right_middle_label_2)
    (free tray_right_bottom_label_3)
  )
  (:goal
    (and
      ; matching rule: place each numbered token into the tray with the same number label
      (in_target token_num_1 tray_right_top_label_1)
      (in_target token_num_2 tray_right_middle_label_2)
      (in_target token_num_3 tray_right_bottom_label_3)
      ; box empty and every tray non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)

; Plan (sequence of actions):
; move_to_target token_num_1 tray_right_top_label_1
; move_to_target token_num_2 tray_right_middle_label_2
; move_to_target token_num_3 tray_right_bottom_label_3

; Task goal: Sort the three round tokens by number into the correspondingly numbered right-hand trays (1→1, 2→2, 3→3). The left box (init container) ends empty.

; Verification summary:
; Total number of objects: 7
; Objects: init_box_left, token_num_1, token_num_2, token_num_3, tray_right_top_label_1, tray_right_middle_label_2, tray_right_bottom_label_3
; All items clearly visible; no uncertainties or partial visibility.