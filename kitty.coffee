# Kitty Gets Coffee
$ ->
  kitty = $ 'img.kitty'
  fish = $ 'img.fish'
  furColors = ['red', 'blue', 'yellow', 'green', 'orange', 'violet', 'pink', 'indigo']
  fishLeft = fish.css 'left'
  fishTop = fish.css 'top'
  
  resetKitty = () ->
  #reset the kitty & fish
    kitty.attr 'src', 'images/kitty.png'
    fish.css 'display', 'block'
    fish.css 'left', fishLeft
    fish.css 'top', fishTop

  kitty.on 'click', ->
  #change kitty's fur color
    randomFurColor = Math.floor Math.random() * furColors.length
    $(@).css 'background', furColors[randomFurColor]

  kitty.droppable
    drop: ->
      kitty.attr 'src', 'images/kitty_nom.png'
      fish.css 'display', 'none'
      setTimeout resetKitty, 1500
      
  fish.draggable
    start: ->
      kitty.attr 'src', 'images/kitty_hungry.png'
    stop: ->
      setTimeout resetKitty, 1500
