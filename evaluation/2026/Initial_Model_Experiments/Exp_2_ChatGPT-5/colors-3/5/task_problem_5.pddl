(define (problem color_match_toprow)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disk_red - item
    disk_yellow - item
    disk_blue - item
    hole_red_top - target           ; top-row hole under red square (left column)
    hole_yellow_top - target        ; top-row hole under yellow square (middle column)
    hole_blue_top - target          ; top-row hole under blue square (right column)
  )
  (:init
    (in_init_container disk_red)
    (in_init_container disk_yellow)
    (in_init_container disk_blue)
    (free hole_red_top)
    (free hole_yellow_top)
    (free hole_blue_top)
  )
  (:goal
    (and
      ; color-matching requirement
      (in_target disk_red hole_red_top)
      (in_target disk_yellow hole_yellow_top)
      (in_target disk_blue hole_blue_top)
      ; container empty and each chosen target non-empty
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (color-matching: place each disk into the top-row hole beneath the same-colored square)
; move_to_target disk_red hole_red_top
; move_to_target disk_yellow hole_yellow_top
; move_to_target disk_blue hole_blue_top

; Task goal summary:
; Put the three colored wooden disks into the top-row circular recesses whose columns are marked by the same color squares (red-left, yellow-middle, blue-right). End state: no disk remains in the left slot area (init_container), and each selected hole is occupied.

; Object identification notes:
; - Items (movable): 3 wooden round disks (red, yellow, blue) seen partially inserted in the left slots.
; - Targets (fixed): the three top-row circular holes on the right, one per color column indicated by the colored squares above.
; - Init container (fixed): the left slotted area holding all disks initially.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, disk_red, disk_yellow, disk_blue, hole_red_top, hole_yellow_top, hole_blue_top
; No uncertainties or partially visible items included (additional unlabeled holes are visible but not part of this task’s targets).