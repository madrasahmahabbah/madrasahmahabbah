(->
  # hadiths = new Backbone.Collection([
  #   {hadith: "The <b>best person</b> amongst you is the one who has the best <b>akhlaq.</b>", citer: "Sahih Al-Bukhari"}
  #   {hadith: "<b>Righteousness</b> is good character, and sin is that which wavers in your heart and <b>which you do not want people to know about.</b>", citer: "Sahih Muslim"}
  #   {hadith: "Allah is <b>more kind to his servants</b> than a mother is <b>to her child.</b>", citer: "Sahih Muslim"}
  #   {hadith: "To spend <b>one morning or evening</b> in the cause of God is <b>better than the world</b> and whatever is in the world.", citer: "Sahih Al-Bukhari"}
  #   {hadith: "A person who goes in search of <b>knowledge,</b> he is in the <b>path of God</b> and he <b>remains so till he returns.</b>", citer: "Sunan At-Tirmizi"}
  #   {hadith: "Richness does not mean having a great amount of property, but richness is <b>self-contentment.</b>", citer: "Sahih Al-Bukhari"}
  # ])

  # hadithView = Backbone.View.extend
  #   el: $("#hadith-rotator")
  #   template: _.template($("#hadiths").html())

  #   render: ->

  #     this.$el.html(this.template(hadiths[Math.floor(Math.random() * hadiths.length)]))

  hadiths = $(".m-hadith")
  hadiths.hide().eq(Math.floor(Math.random() * hadiths.length)).show()
)()

# # EXPERIMENTS: parallax scroll
# $ ->
#   $window = $(window)
#   $body = $("body.initiative")
#   $header = $(".m-header")
#   $footer = $(".m-footer")

#   $window.scroll ->
#     bodyY = -($window.scrollTop() / 5)
#     $body.css backgroundPosition: "0 " + bodyY + "px"

#     headerY = -($window.scrollTop() / 1)
#     $header.css y: headerY + "px"

#     # footerY = $window.height() - ($window.scrollTop() / 1)
#     # $footer.css y: footerY + "px"
#     # console.log $window.height()

#     return
