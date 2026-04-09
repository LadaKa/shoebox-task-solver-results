(define (problem problem_color_match_toprow)
  (:domain shoebox-simple)
  (:objects
    left_slots_init - init_container
    disk_red - item
    disk_yellow - item
    disk_blue - item
    circle_top_left_red - target
    circle_top_center_yellow - target
    circle_top_right_blue - target
  )
  (:init
    (in_init_container disk_red)
    (in_init_container disk_yellow)
    (in_init_container disk_blue)
    (free circle_top_left_red)
    (free circle_top_center_yellow)
    (free circle_top_right_blue)
  )
  (:goal
    (and
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
      (in_target disk_red circle_top_left_red)
      (in_target disk_yellow circle_top_center_yellow)
      (in_target disk_blue circle_top_right_blue)
    )
  )
)
; Plan (color-match each disk to its marked circle):
; move_to_target disk_red circle_top_left_red
; move_to_target disk_yellow circle_top_center_yellow
; move_to_target disk_blue circle_top_right_blue

; Comments:
; - Task goal: empty the left init slots and place one disk in each marked target circle.
; - Matching rule inferred from the image: place each colored disk into the circle under the square of the same color (red-left, yellow-center, blue-right).
; - Only the three top-row circles with color markers are targets; other board wells are not part of this task.

; Verification summary:
; Total number of objects: 7
; Objects: left_slots_init, disk_red, disk_yellow, disk_blue, circle_top_left_red, circle_top_center_yellow, circle_top_right_blue
; All three disks are visible (partially inserted); no uncertainties.