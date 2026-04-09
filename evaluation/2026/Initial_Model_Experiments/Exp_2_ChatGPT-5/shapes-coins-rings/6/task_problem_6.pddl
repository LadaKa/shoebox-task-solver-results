(define (problem shape-sorter-left-column)
  (:domain shoebox-simple)
  (:objects
    tray_init - init_container
    disc_blue_circle - item
    disc_blue_triangle - item
    disc_blue_square_rotated - item        ; diamond = square (rotation-invariant)
    slot_circle_left_top - target
    slot_triangle_left_middle - target
    slot_square_left_bottom - target
  )
  (:init
    (in_init_container disc_blue_circle)
    (in_init_container disc_blue_triangle)
    (in_init_container disc_blue_square_rotated)
    (free slot_circle_left_top)
    (free slot_triangle_left_middle)
    (free slot_square_left_bottom)
  )
  (:goal
    (and
      ; shape-based matching (rotation-invariant): circle→circle, triangle→triangle, diamond→square
      (in_target disc_blue_circle slot_circle_left_top)
      (in_target disc_blue_triangle slot_triangle_left_middle)
      (in_target disc_blue_square_rotated slot_square_left_bottom)
      ; generic task conditions
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan:
; move_to_target disc_blue_circle slot_circle_left_top
; move_to_target disc_blue_triangle slot_triangle_left_middle
; move_to_target disc_blue_square_rotated slot_square_left_bottom

; Task goal: place each wooden disc into the target slot with the same shape.
; The “diamond” on the disc matches the square slot (square vs. diamond are the same up to rotation).

; Verification summary:
; Total number of modeled task objects: 7
; Objects:
; - init container: tray_init
; - items: disc_blue_circle, disc_blue_triangle, disc_blue_square_rotated
; - targets (left column): slot_circle_left_top, slot_triangle_left_middle, slot_square_left_bottom
; Notes: Two additional columns of identical blue outline shapes are visible on the right; they appear to be duplicate slots/markings. To maintain one-to-one item–target assignment, only the left-column targets are modeled. No items are uncertain or partially visible.