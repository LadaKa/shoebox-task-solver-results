(define (problem shoebox_number_match_1)
  (:domain shoebox-simple)
  (:objects
    init_bin_left - init_container
    token_blue_1 - item
    token_blue_2 - item
    token_blue_3 - item
    tray_right_top_num1 - target
    tray_right_middle_num2 - target
    tray_right_bottom_num3 - target
  )
  (:init
    (in_init_container token_blue_1)
    (in_init_container token_blue_2)
    (in_init_container token_blue_3)
    (free tray_right_top_num1)
    (free tray_right_middle_num2)
    (free tray_right_bottom_num3)
  )
  (:goal
    (and
      ; Each tray must contain one item and the init bin is empty.
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
      ; Matching rule: item number equals tray number.
      (in_target token_blue_1 tray_right_top_num1)
      (in_target token_blue_2 tray_right_middle_num2)
      (in_target token_blue_3 tray_right_bottom_num3)
    )
  )
)
; Plan (move each numbered blue token to the tray with the same number, top-to-bottom on the right):
; move_to_target token_blue_1 tray_right_top_num1
; move_to_target token_blue_2 tray_right_middle_num2
; move_to_target token_blue_3 tray_right_bottom_num3

; Task goal: Place each blue-numbered circular token into the right-side tray labeled with the same number. End state: all three trays non-empty and the left init bin empty.

; Verification summary:
; Total number of objects: 7
; Objects:
;   init_container: init_bin_left
;   items: token_blue_1, token_blue_2, token_blue_3
;   targets: tray_right_top_num1, tray_right_middle_num2, tray_right_bottom_num3
; All objects clearly visible; no uncertainties.