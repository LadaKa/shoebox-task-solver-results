(define (problem numbered_discs_to_trays)
  (:domain shoebox-simple)
  (:objects
    init_box_left - init_container
    disc_blue_1 - item
    disc_blue_2 - item
    disc_blue_3 - item
    tray_right_top_label_1 - target
    tray_right_middle_label_2 - target
    tray_right_bottom_label_3 - target
  )
  (:init
    (in_init_container disc_blue_1)
    (in_init_container disc_blue_2)
    (in_init_container disc_blue_3)
    (free tray_right_top_label_1)
    (free tray_right_middle_label_2)
    (free tray_right_bottom_label_3)
  )
  (:goal
    (and
      (in_target disc_blue_1 tray_right_top_label_1)
      (in_target disc_blue_2 tray_right_middle_label_2)
      (in_target disc_blue_3 tray_right_bottom_label_3)
      (not (in_init_container disc_blue_1))
      (not (in_init_container disc_blue_2))
      (not (in_init_container disc_blue_3))
      (not (free tray_right_top_label_1))
      (not (free tray_right_middle_label_2))
      (not (free tray_right_bottom_label_3))
    )
  )
)
; Plan (match numbers on blue discs to numbers on trays):
; move_to_target disc_blue_1 tray_right_top_label_1
; move_to_target disc_blue_2 tray_right_middle_label_2
; move_to_target disc_blue_3 tray_right_bottom_label_3

; Comments:
; Task goal: place each numbered blue disc into the tray with the same number. When done, each tray is non-empty and the init container is empty.

; Verification summary:
; Total number of objects: 7
; Objects: init_box_left, disc_blue_1, disc_blue_2, disc_blue_3, tray_right_top_label_1, tray_right_middle_label_2, tray_right_bottom_label_3
; All objects clearly visible; no uncertainties or partially visible items.