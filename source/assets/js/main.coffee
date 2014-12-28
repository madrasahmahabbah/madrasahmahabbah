do ->

  $window = $(window)

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
  $.stellar
    horizontalScrolling: false
    # positionProperty: 'transform'
    hideDistantElements: false

  # initiatives
  initbg = $(".m-initiatives")
  initbg.find(".init").hover (->
    initbg.addClass "bg-#{$(this).data("init")}"
    ), (->
      initbg.removeClass "bg-#{$(this).data("init")}"
      )

  # advert cover
  # $('body').on 'mousewheel', (haltScroll = (ev) ->
  #   ev.preventDefault()
  #   ev.stopPropagation()
  #   )

  # $('.m-cover').click (ev) ->
  #   $('.m-cover').addClass('fadeOutUpBig animated')
  #   $('body').scrollTop(0) #.off 'mousewheel', haltScroll
  #   ev.preventDefault()
  #   false

  # m-friends section
  $friends = $(".m-friends")
  $window.resize $.throttle 250, setHeight = ->
    $friends.css height: $window.width() * 500 / 1280

  setHeight()

  # scroll
  $('button.trigger-about').on 'click', ->
    $.smoothScroll
      scrollTarget: '.m-pillars'
      offset: 1
    false

  $('button.trigger-init').on 'click', ->
    $.smoothScroll
      scrollTarget: '.m-initiatives'
      offset: 1
    false
