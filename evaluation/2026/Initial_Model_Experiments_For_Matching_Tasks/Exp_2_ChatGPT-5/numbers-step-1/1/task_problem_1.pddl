(define (problem shoebox_image_task_01)
  (:domain shoebox-simple)
  (:objects
    init_box_left - init_container
    disk_num1_blue - item
    disk_num2_blue - item
    disk_num3_blue - item
    tray_right_top_label1 - target
    tray_right_mid_label2 - target
    tray_right_bottom_label3 - target
  )
  (:init
    (in_init_container disk_num1_blue)
    (in_init_container disk_num2_blue)
    (in_init_container disk_num3_blue)
    (free tray_right_top_label1)
    (free tray_right_mid_label2)
    (free tray_right_bottom_label3)
  )
  (:goal
    (and
      ; match-by-number: each numbered blue disk goes to the tray with the same number label
      (in_target disk_num1_blue tray_right_top_label1)
      (in_target disk_num2_blue tray_right_mid_label2)
      (in_target disk_num3_blue tray_right_bottom_label3)
      ; container empty and every target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)

; Action plan (move each numbered disk to the same-number tray, top-to-bottom):
; move_to_target disk_num1_blue tray_right_top_label1
; move_to_target disk_num2_blue tray_right_mid_label2
; move_to_target disk_num3_blue tray_right_bottom_label3

; Task goal: place each blue-numbered circular disk into the tray with the matching handwritten number (1,2,3). The initial box at left holds all disks.
; Object verification summary:
; Total number of objects: 7
; Objects: init_box_left, disk_num1_blue, disk_num2_blue, disk_num3_blue, tray_right_top_label1, tray_right_mid_label2, tray_right_bottom_label3
; All items fully visible; no uncertainties.