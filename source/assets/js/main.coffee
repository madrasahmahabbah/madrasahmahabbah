#= require 'overlay'
#= require 'modal'

do ->

  # Ayat randomizer
  verses = $(".m-ayat")
  verses.eq(Math.floor(Math.random() * verses.length)).show()
  verses.click ->
    verses.hide().eq(Math.floor(Math.random() * verses.length)).show()
    return

  # Hadith randomizer
  hadiths = $(".m-hadith")
  hadiths.hide().eq(Math.floor(Math.random() * hadiths.length)).show()

  # # EXPERIMENTS: parallax scroll
  $.stellar()

  # $window = $(window)
  # $body = $("body")
  # $welcome = $(".m-welcome")
  # $quran = $(".m-quran")
  # $pillars = $(".m-pillars")
  # $inits = $(".m-initiatives")

  # $window.scroll ->
  #   origBodyY = $window.scrollTop()
  #   bodyY = ($window.scrollTop() / 5)

  #   $welcome.css backgroundPosition: "0 " + (origBodyY - ($welcome.offset().top/5)) + "px"
  #   $quran.css backgroundPosition: "0 " + (bodyY - ($quran.offset().top/2)) + "px"
  #   $pillars.css backgroundPosition: "0 " + (bodyY - ($pillars.offset().top/2)) + "px"
  #   $inits.css backgroundPosition: "0 " + (bodyY - ($inits.offset().top/0.5)) + "px"

  #   return

  # initiatives
  initbg = $(".m-initiatives")
  initbg.find(".init").hover (->
    initbg.addClass "bg-#{$(this).data("init")}"
    ), (->
      initbg.removeClass "bg-#{$(this).data("init")}"
      )

  # advert cover
  $('body').on 'mousewheel', (haltScroll = (ev) ->
    ev.preventDefault()
    ev.stopPropagation()
    )

  $('.m-cover').click (ev) ->
    $('.m-cover').addClass('slideOutUp animated')
    $('body').scrollTop(0).off 'mousewheel', haltScroll
    ev.preventDefault()
    false