(define (problem numbers_match_trays)
  (:domain shoebox-simple)
  (:objects
    init_slot_left - init_container
    disc_1_blue - item
    disc_2_blue - item
    disc_3_blue - item
    tray_right_top_label_1 - target
    tray_right_middle_label_2 - target
    tray_right_bottom_label_3 - target
  )
  (:init
    (in_init_container disc_1_blue)
    (in_init_container disc_2_blue)
    (in_init_container disc_3_blue)
    (free tray_right_top_label_1)
    (free tray_right_middle_label_2)
    (free tray_right_bottom_label_3)
  )
  (:goal
    (and
      ; Matching rule: place each numbered disc into the tray with the same number label
      (in_target disc_1_blue tray_right_top_label_1)
      (in_target disc_2_blue tray_right_middle_label_2)
      (in_target disc_3_blue tray_right_bottom_label_3)
      ; Box constraints: all targets filled, init container empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)

; Plan:
; move_to_target disc_1_blue tray_right_top_label_1
; move_to_target disc_2_blue tray_right_middle_label_2
; move_to_target disc_3_blue tray_right_bottom_label_3

; Comments:
; Goal: Each blue-numbered disc (1,2,3) must be placed into the right-side tray with the same number label (top=1, middle=2, bottom=3). One disc per tray; left init slot becomes empty.

; Verification summary:
; Total number of objects: 7
; Objects: init_slot_left, disc_1_blue, disc_2_blue, disc_3_blue, tray_right_top_label_1, tray_right_middle_label_2, tray_right_bottom_label_3
; No uncertainties or partially visible items