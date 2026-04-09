(define (problem shoebox_color_match_3)
  (:domain shoebox-simple)
  (:objects
    init_container_left_box - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    tray_right_top_green - target
    tray_right_middle_red - target
    tray_right_bottom_blue - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free tray_right_top_green)
    (free tray_right_middle_red)
    (free tray_right_bottom_blue)
  )
  (:goal
    (and
      ; all targets filled and init container empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
      ; color-matching placement required by the scene
      (in_target ball_green tray_right_top_green)
      (in_target ball_red tray_right_middle_red)
      (in_target ball_blue tray_right_bottom_blue)
    )
  )
)
; Action plan (color-matching: ball -> tray with same colored tab)
; move_to_target ball_green tray_right_top_green
; move_to_target ball_red tray_right_middle_red
; move_to_target ball_blue tray_right_bottom_blue

; Task goal: place each colored ball into the tray on the right that has a tab of the same color (top=green, middle=red, bottom=blue). Init container ends empty and each tray becomes non-empty.

; Verification summary:
; Total number of objects: 7
; Objects: init_container_left_box, ball_red, ball_green, ball_blue, tray_right_top_green, tray_right_middle_red, tray_right_bottom_blue
; No uncertainties or partially visible items