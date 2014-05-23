do ->
  do ->
    # disable tab key
    $(document).keydown (e) ->
      e.preventDefault()  if e.keyCode is 9
      return


  do ->
    $(".container").onepage_scroll
      sectionContainer: "section"
      responsiveFallback: 768
      updateURL: true
      # loop: true
      beforeMove: (index) ->
        random_hadith() if index is 3

    $("a.toplink-home").click ->
      $(".container").moveTo(1)
      false

  # initiative section
  do ->
    initbg = $(".m-init")
    initbg.find(".init").hover (->
      initbg.addClass "bg-#{$(this).data("init")}"
    ), (->
      initbg.removeClass "bg-#{$(this).data("init")}"
    )


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
