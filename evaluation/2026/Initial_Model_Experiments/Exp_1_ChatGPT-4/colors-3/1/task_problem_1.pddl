(define (problem problem_from_image)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disk_red - item
    disk_yellow - item
    disk_blue - item
    target_red - target
    target_yellow - target
    target_blue - target
  )
  (:init
    (in_init_container disk_red)
    (in_init_container disk_yellow)
    (in_init_container disk_blue)
    (free target_red)
    (free target_yellow)
    (free target_blue)
  )
  (:goal
    (and
      (in_target disk_red target_red)
      (in_target disk_yellow target_yellow)
      (in_target disk_blue target_blue)
    )
  )
)

; move_to_target disk_red target_red
; move_to_target disk_yellow target_yellow
; move_to_target disk_blue target_blue

; Verification summary:
; Total number of objects: 6
; Objects: disks (disk_red, disk_yellow, disk_blue), targets (target_red, target_yellow, target_blue)
; No uncertainties or partially visible items

; Task goal: Move each colored disk to its corresponding colored target.