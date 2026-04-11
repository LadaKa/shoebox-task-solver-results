(define (problem shoebox_numbers_match_3)
  (:domain shoebox-simple)
  (:objects
    init_box_left - init_container
    token_num1 - item
    token_num2 - item
    token_num3 - item
    tray_right_top_label1 - target
    tray_right_middle_label2 - target
    tray_right_bottom_label3 - target
  )
  (:init
    (in_init_container token_num1)
    (in_init_container token_num2)
    (in_init_container token_num3)
    (free tray_right_top_label1)
    (free tray_right_middle_label2)
    (free tray_right_bottom_label3)
  )
  (:goal
    (and
      ; number-matching requirement
      (in_target token_num1 tray_right_top_label1)
      (in_target token_num2 tray_right_middle_label2)
      (in_target token_num3 tray_right_bottom_label3)
      ; container empty and all targets occupied
      (not (in_init_container token_num1))
      (not (in_init_container token_num2))
      (not (in_init_container token_num3))
      (not (free tray_right_top_label1))
      (not (free tray_right_middle_label2))
      (not (free tray_right_bottom_label3))
    )
  )
)

; Plan (numbers must match: token -> tray with the same label)
; move_to_target token_num1 tray_right_top_label1
; move_to_target token_num2 tray_right_middle_label2
; move_to_target token_num3 tray_right_bottom_label3

; Comments:
; - Task goal: empty the left init box and place each numbered circular token into the right-hand tray with the same number label (1→1, 2→2, 3→3).
; - Objects identified from the image (positions included for targets).

; Verification summary:
; Total number of objects: 7
; Objects: init_box_left, token_num1, token_num2, token_num3, tray_right_top_label1, tray_right_middle_label2, tray_right_bottom_label3
; All objects fully visible; no uncertainties.