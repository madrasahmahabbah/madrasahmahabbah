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
  # $window = $(window)
  # $body = $("body")
  # $welcome = $(".m-welcome")
  # $quran = $(".m-quran")

  # $window.scroll ->
  #   # bodyY = ($window.scrollTop() / 5)
  #   # $welcome.css backgroundPosition: "0 " + bodyY + "px"
  #   bodyY = ($window.scrollTop() / 5)
  #   $quran.css backgroundPosition: "0 " + (bodyY - ($quran.offset().top/2)) + "px"

  #   return