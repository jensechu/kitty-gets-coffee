# Kitty Gets Coffee
$ ->
  kitty = $ 'img.kitty'
  fish = $ 'img.fish'
  furColors = ['red', 'blue', 'yellow', 'green', 'orange', 'violet', 'pink', 'indigo']

  kitty.on 'click', ->
    #change kitty's fur color
    randomFurColor = Math.floor Math.random() * furColors.length
    $(@).css 'background', furColors[randomFurColor]

  fish.draggable
    start: ->
      kitty.attr 'src', '/images/kitty_hungry.png'
    stop: ->
      kitty.attr 'src', '/images/kitty_nom.png'