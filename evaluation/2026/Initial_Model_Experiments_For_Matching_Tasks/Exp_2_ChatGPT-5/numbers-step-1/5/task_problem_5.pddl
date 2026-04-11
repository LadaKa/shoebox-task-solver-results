(define (problem shoebox_numbered_tokens_to_trays)
  (:domain shoebox-simple)
  (:objects
    init_box_left - init_container
    token_num1_blue_circle - item
    token_num2_blue_circle - item
    token_num3_blue_circle - item
    tray_label1_right_top - target
    tray_label2_right_middle - target
    tray_label3_right_bottom - target
  )
  (:init
    (in_init_container token_num1_blue_circle)
    (in_init_container token_num2_blue_circle)
    (in_init_container token_num3_blue_circle)
    (free tray_label1_right_top)
    (free tray_label2_right_middle)
    (free tray_label3_right_bottom)
  )
  (:goal
    (and
      ; property-based matching: item number must equal tray label
      (in_target token_num1_blue_circle tray_label1_right_top)
      (in_target token_num2_blue_circle tray_label2_right_middle)
      (in_target token_num3_blue_circle tray_label3_right_bottom)
      ; global constraints: init container empty and every target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (each numbered token goes to the tray with the same number, top-to-bottom):
; move_to_target token_num1_blue_circle tray_label1_right_top
; move_to_target token_num2_blue_circle tray_label2_right_middle
; move_to_target token_num3_blue_circle tray_label3_right_bottom

; Task goal: place each numbered circular token into the right-side tray bearing the same number; end with empty init box and all trays occupied.

; Verification summary:
; Total number of objects: 7
; Objects: init_box_left, token_num1_blue_circle, token_num2_blue_circle, token_num3_blue_circle, tray_label1_right_top, tray_label2_right_middle, tray_label3_right_bottom
; All items fully visible; no uncertainties or partially visible objects.