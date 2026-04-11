(define (problem shapes_on_cards_3)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container

    ring_circle_blue - item
    ring_triangle_blue - item
    ring_square_blue_rotated - item   ; a square frame seen as a diamond (rotation)

    slot_circle_left - target
    slot_triangle_center - target
    slot_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container ring_triangle_blue)
    (in_init_container ring_square_blue_rotated)

    (free slot_circle_left)
    (free slot_triangle_center)
    (free slot_square_right)
  )
  (:goal
    (and
      ; shape-based matching (rotation ignored):
      (in_target ring_circle_blue slot_circle_left)
      (in_target ring_triangle_blue slot_triangle_center)
      (in_target ring_square_blue_rotated slot_square_right)

      ; global goal conditions of the task:
      (forall (?y - target) (not (free ?y)))            ; every target non-empty
      (forall (?x - item) (not (in_init_container ?x))) ; init container empty
    )
  )
)
; Action plan (one item per matching shape slot, left-to-right):
; move_to_target ring_circle_blue slot_circle_left
; move_to_target ring_triangle_blue slot_triangle_center
; move_to_target ring_square_blue_rotated slot_square_right

; Task goal comment:
; Place each blue shape ring onto the slot whose card shows the same shape:
; circle -> left slot, triangle -> center slot, square (rotated as diamond) -> right slot.
; Rotation is not relevant; only the shape identity matters.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container; items = ring_circle_blue, ring_triangle_blue, ring_square_blue_rotated;
;          targets = slot_circle_left, slot_triangle_center, slot_square_right.
; All items are fully visible in the init_container; targets are the three shape-labeled card slots.
; Note: Additional wooden pegs are visible, but only the three shape-card positions are modeled as targets for this task.