# hover_dir = ->
#   _getDir = ($el, coordinates) ->

#     # the width and height of the current div
#     w = $el.width()
#     h = $el.height()

#     # calculate the x and y to get an angle to the center of the div from that x and y.
#     # gets the x value relative to the center of the DIV and "normalize" it
#     x = (coordinates.x - $el.offset().left - (w / 2)) * ((if w > h then (h / w) else 1))
#     y = (coordinates.y - $el.offset().top - (h / 2)) * ((if h > w then (w / h) else 1))

#     # the angle and the direction from where the mouse came in/went out clockwise (TRBL=0123);
#     # first calculate the angle of the point,
#     # add 180 deg to get rid of the negative values
#     # divide by 90 to get the quadrant
#     # add 3 and do a modulo by 4  to shift the quadrants to a proper clockwise TRBL (top/right/bottom/left) **/
#     direction = Math.round((((Math.atan2(y, x) * (180 / Math.PI)) + 180) / 90) + 3) % 4
#     direction

#   box = $(".m-init .init")
#   box.on "mouseenter.hoverdir, mouseleave.hoverdir", (event) ->
#     $el = $(this)
#     $ol = $el.find(".overlay")
#     $hoverElem = $el.find("div.overlay")

#     direction = _getDir($el,
#       x: event.pageX
#       y: event.pageY
#     )

#     _transit = (entrance) ->
#       to = x:0, y: 0
#       switch direction
#         when 0
#           from = y: "-100%", x: 0
#         when 1
#           from = x: "100%", y: 0
#         when 2
#           from = y: "100%", x: 0
#         when 3
#           from = x: "-100%", y: 0

#       if entrance
#         $ol.css from
#         $ol.transition to, 100, "ease"
#       else
#         $ol.css to
#         $ol.transition from, 100, "ease"

#     _transit event.type is "mouseenter"
