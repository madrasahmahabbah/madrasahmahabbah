#= require 'overlay'
#= require 'modal'

$ ->

  # Ayat randomizer
  verses = $(".m-ayat")
  verses.eq(Math.floor(Math.random() * verses.length)).show "medium"
  verses.click ->
    verses.hide("medium").eq(Math.floor(Math.random() * verses.length)).show "medium"
    return

  # Hadith randomizer
  hadiths = $(".m-hadith")
  hadiths.hide().eq(Math.floor(Math.random() * hadiths.length)).show()
