# Kitty Gets Coffee
$ ->
  kitty = $ 'img.kitty'
  # Make these colors pretty.
  furColors = ['red', 'blue', 'yellow', 'green', 'orange', 'violet', 'pink', 'indigo']
  
  kitty.on 'click', ->
    randomFurColor = Math.floor Math.random() * furColors.length
    $(@).css 'background', furColors[randomFurColor]