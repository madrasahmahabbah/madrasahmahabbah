do ->

  do ->
    $(".main").onepage_scroll
      sectionContainer: "section"
      responsiveFallback: 768
      beforeMove: (index) ->
        if index > 1
          $(".m-toplink").addClass("not-front")
        else
          $(".m-toplink").removeClass("not-front")

        if index is 3
          random_hadith()

    $("a.toplink-home").click ->
      $(".main").moveTo(1)
      false

  # Ayat randomizer
  verses = $(".m-ayat")
  verses.eq(Math.floor(Math.random() * verses.length)).show()
  verses.click ->
    verses.hide().eq(Math.floor(Math.random() * verses.length)).show()
    return

  # Hadith randomizer
  random_hadith = ->
    hadiths = $(".m-hadith blockquote > .random")
    hadiths.hide().eq(Math.floor(Math.random() * hadiths.length)).show()

  random_hadith()
