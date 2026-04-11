(define (problem problem_numbered_discs_to_trays_1)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_1_blue - item
    disc_2_blue - item
    disc_3_blue - item
    tray_right_top_label1 - target
    tray_right_middle_label2 - target
    tray_right_bottom_label3 - target
  )
  (:init
    (in_init_container disc_1_blue)
    (in_init_container disc_2_blue)
    (in_init_container disc_3_blue)
    (free tray_right_top_label1)
    (free tray_right_middle_label2)
    (free tray_right_bottom_label3)
  )
  (:goal
    (and
      ; matching rule: number on blue disc must match number label on tray
      (in_target disc_1_blue tray_right_top_label1)
      (in_target disc_2_blue tray_right_middle_label2)
      (in_target disc_3_blue tray_right_bottom_label3)
      ; explicit goal conditions: init container empty and each target non-empty
      (not (in_init_container disc_1_blue))
      (not (in_init_container disc_2_blue))
      (not (in_init_container disc_3_blue))
      (not (free tray_right_top_label1))
      (not (free tray_right_middle_label2))
      (not (free tray_right_bottom_label3))
    )
  )
)

; Plan to solve:
; move_to_target disc_1_blue tray_right_top_label1
; move_to_target disc_2_blue tray_right_middle_label2
; move_to_target disc_3_blue tray_right_bottom_label3

; Task goal: place each blue-numbered disc into the tray with the same number (1→top-right tray, 2→middle-right tray, 3→bottom-right tray). End state: init_container empty, all trays occupied.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, disc_1_blue, disc_2_blue, disc_3_blue, tray_right_top_label1, tray_right_middle_label2, tray_right_bottom_label3
; All objects are clearly visible; no uncertainties or partial views.