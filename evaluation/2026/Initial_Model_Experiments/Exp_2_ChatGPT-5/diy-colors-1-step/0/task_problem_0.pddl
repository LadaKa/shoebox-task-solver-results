(define (problem shoebox_color_sort_3)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ball_red - item
    ball_green - item
    ball_blue - item
    tray_green_right_top - target
    tray_red_right_middle - target
    tray_blue_right_bottom - target
  )
  (:init
    (in_init_container ball_red)
    (in_init_container ball_green)
    (in_init_container ball_blue)
    (free tray_green_right_top)
    (free tray_red_right_middle)
    (free tray_blue_right_bottom)
  )
  (:goal
    (and
      ; color-matching requirement
      (in_target ball_green tray_green_right_top)
      (in_target ball_red tray_red_right_middle)
      (in_target ball_blue tray_blue_right_bottom)
      ; init_container must be empty
      (not (in_init_container ball_green))
      (not (in_init_container ball_red))
      (not (in_init_container ball_blue))
      ; each target must be non-empty
      (not (free tray_green_right_top))
      (not (free tray_red_right_middle))
      (not (free tray_blue_right_bottom))
    )
  )
)
; PDDL action plan (color-coded placement):
; move_to_target ball_green tray_green_right_top
; move_to_target ball_red tray_red_right_middle
; move_to_target ball_blue tray_blue_right_bottom

; Task goal: Empty the left init_container and place each colored ball into the tray with the matching colored tab (green→top-right tray, red→middle-right tray, blue→bottom-right tray). Each target ends non-empty.
; Object identification:
; - initial_container: small white box on the left holding all balls.
; - targets: three right-side trays with colored tabs (green top, red middle, blue bottom).
; - items: three foam balls (green, red, blue).
; Verification summary:
; Total number of objects: 7
; Objects: initial_container, ball_green, ball_red, ball_blue, tray_green_right_top, tray_red_right_middle, tray_blue_right_bottom
; No uncertainties or partially visible task objects.