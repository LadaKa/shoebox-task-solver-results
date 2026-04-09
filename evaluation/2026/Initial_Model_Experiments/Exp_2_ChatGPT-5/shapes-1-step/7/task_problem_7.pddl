(define (problem shoebox_image_task_01)
  (:domain shoebox-simple)
  (:objects
    bowl_white_left - init_container
    ring_circle_blue - item
    ring_triangle_blue - item
    ring_square_blue - item
    card_circle_left - target
    card_triangle_center - target
    card_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container ring_triangle_blue)
    (in_init_container ring_square_blue)
    (free card_circle_left)
    (free card_triangle_center)
    (free card_square_right)
  )
  (:goal
    (and
      ; property-based assignment: shape-to-shape (circle→circle, triangle→triangle, square→square)
      (in_target ring_circle_blue card_circle_left)
      (in_target ring_triangle_blue card_triangle_center)
      (in_target ring_square_blue card_square_right)
      ; global task conditions
      (forall (?y - target) (not (free ?y)))              ; every target holds exactly one item
      (forall (?x - item) (not (in_init_container ?x)))   ; init container is empty
    )
  )
)
; Plan (one move per item; targets start free)
; move_to_target ring_circle_blue card_circle_left
; move_to_target ring_triangle_blue card_triangle_center
; move_to_target ring_square_blue card_square_right

; Task goal: place each blue ring-shaped piece onto the card showing the same shape (circle, triangle, square), ending with an empty bowl and all three cards occupied.

; Verification summary:
; Total number of task objects: 7
; Objects listed: bowl_white_left; ring_circle_blue, ring_triangle_blue, ring_square_blue; card_circle_left, card_triangle_center, card_square_right.
; No uncertainties or partially visible task items. Other fixtures (tray, wooden pegs) are ignored as non-target, non-item scenery.