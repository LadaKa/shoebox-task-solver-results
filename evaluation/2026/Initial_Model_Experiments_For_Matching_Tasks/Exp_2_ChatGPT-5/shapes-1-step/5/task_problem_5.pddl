(define (problem shoebox_shapes_match_01)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ring_circle_blue - item
    triangle_blue - item
    square_blue_rotated - item
    card_circle_left - target
    card_triangle_middle - target
    card_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container triangle_blue)
    (in_init_container square_blue_rotated)
    (free card_circle_left)
    (free card_triangle_middle)
    (free card_square_right)
  )
  (:goal
    (and
      ; shape-matching rule encoded explicitly:
      (in_target ring_circle_blue card_circle_left)
      (in_target triangle_blue card_triangle_middle)
      (in_target square_blue_rotated card_square_right)
      ; container empty and each target non-empty:
      (not (in_init_container ring_circle_blue))
      (not (in_init_container triangle_blue))
      (not (in_init_container square_blue_rotated))
      (not (free card_circle_left))
      (not (free card_triangle_middle))
      (not (free card_square_right))
    )
  )
)

; Plan (any order valid; one item per matching card):
; move_to_target ring_circle_blue card_circle_left
; move_to_target triangle_blue card_triangle_middle
; move_to_target square_blue_rotated card_square_right

; Task goal: Place each blue outline shape from the bowl into the target card that shows the same shape (circle→circle card, triangle→triangle card, square→square card). Each target holds exactly one item and the bowl ends empty.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, ring_circle_blue, triangle_blue, square_blue_rotated, card_circle_left, card_triangle_middle, card_square_right
; All listed objects are clearly visible. Wooden pegs on the board are structural and not used as targets in this task.