#= require 'overlay'
#= require 'modal'

$ ->

  # Ayat randomizer
  verses = $(".mahabbah-quran blockquote")
  verses.eq(Math.floor(Math.random() * verses.length)).show "medium"
  verses.click ->
    verses.hide("medium").eq(Math.floor(Math.random() * verses.length)).show "medium"
    return

  # Hadith randomizer
  hadiths = $(".footer-hadith")
  hadiths.hide().eq(Math.floor(Math.random() * hadiths.length)).show()
