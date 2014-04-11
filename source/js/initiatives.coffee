$ ->
  hadiths = $(".footer-hadith")
  hadiths.hide().eq(Math.floor(Math.random() * hadiths.length)).show()

# # EXPERIMENTS: parallax scroll
# $ ->
#   $window = $(window)
#   $body = $("body.initiative")
#   $header = $(".mahabbah-header")
#   $footer = $(".mahabbah-footer")

#   $window.scroll ->
#     bodyY = -($window.scrollTop() / 5)
#     $body.css backgroundPosition: "0 " + bodyY + "px"

#     headerY = -($window.scrollTop() / 1)
#     $header.css y: headerY + "px"

#     # footerY = $window.height() - ($window.scrollTop() / 1)
#     # $footer.css y: footerY + "px"
#     # console.log $window.height()

#     return
