(define (problem color_disks_toprow)
  (:domain shoebox-simple)
  (:objects
    init_tray - init_container
    disk_red - item
    disk_yellow - item
    disk_blue - item
    hole_red_top_left - target
    hole_yellow_top_middle - target
    hole_blue_top_right - target
  )
  (:init
    (in_init_container disk_red)
    (in_init_container disk_yellow)
    (in_init_container disk_blue)
    (free hole_red_top_left)
    (free hole_yellow_top_middle)
    (free hole_blue_top_right)
  )
  (:goal
    (and
      ; color-matching placement (property made explicit in names)
      (in_target disk_red hole_red_top_left)
      (in_target disk_yellow hole_yellow_top_middle)
      (in_target disk_blue hole_blue_top_right)
      ; container empty and each target non-empty
      (not (in_init_container disk_red))
      (not (in_init_container disk_yellow))
      (not (in_init_container disk_blue))
      (not (free hole_red_top_left))
      (not (free hole_yellow_top_middle))
      (not (free hole_blue_top_right))
    )
  )
)
; move_to_target disk_red hole_red_top_left
; move_to_target disk_yellow hole_yellow_top_middle
; move_to_target disk_blue hole_blue_top_right

; Task goal: place each colored wooden disk into the top-row circular well directly under the matching colored square (red-left, yellow-middle, blue-right). One disk per well; the init_tray becomes empty.
; Object identification notes:
; - Movable items: disk_red, disk_yellow, disk_blue (round wooden disks; partially inserted but clearly visible).
; - Targets considered: the three top-row wells aligned under the color labels (other unlabeled wells are ignored as non-targets for this task).
; - Fixed container: init_tray (left slotted area holding the disks initially).
; Verification summary:
; Total number of objects: 7
; Objects: init_tray, disk_red, disk_yellow, disk_blue, hole_red_top_left, hole_yellow_top_middle, hole_blue_top_right
; Partially visible items: the three disks are partially inserted; no uncertainty about identity.