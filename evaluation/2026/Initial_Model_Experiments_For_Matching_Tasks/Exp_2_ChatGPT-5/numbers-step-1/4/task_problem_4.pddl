(define (problem problem_numbered_tokens_to_labeled_trays)
  (:domain shoebox-simple)
  (:objects
    init_left_compartment - init_container
    token_blue_1 - item
    token_blue_2 - item
    token_blue_3 - item
    tray_right_top_label_1 - target
    tray_right_middle_label_2 - target
    tray_right_bottom_label_3 - target
  )
  (:init
    (in_init_container token_blue_1)
    (in_init_container token_blue_2)
    (in_init_container token_blue_3)
    (free tray_right_top_label_1)
    (free tray_right_middle_label_2)
    (free tray_right_bottom_label_3)
  )
  (:goal
    (and
      ; property-based matching: item number must equal tray label
      (in_target token_blue_1 tray_right_top_label_1)
      (in_target token_blue_2 tray_right_middle_label_2)
      (in_target token_blue_3 tray_right_bottom_label_3)
      ; init container empty and all targets non-empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Plan:
; move_to_target token_blue_1 tray_right_top_label_1
; move_to_target token_blue_2 tray_right_middle_label_2
; move_to_target token_blue_3 tray_right_bottom_label_3

; Task goal: Place each numbered blue token from the left init compartment into the tray on the right with the same number label (top=1, middle=2, bottom=3). Each tray holds exactly one token; the init compartment becomes empty.

; Verification summary:
; Total number of objects: 7
; Objects: init_left_compartment, token_blue_1, token_blue_2, token_blue_3, tray_right_top_label_1, tray_right_middle_label_2, tray_right_bottom_label_3
; All objects clearly visible; no uncertainties or partial visibility