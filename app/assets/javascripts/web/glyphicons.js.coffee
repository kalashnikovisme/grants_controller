$(document).ready ->
  $('span.glyphicon').each ->
    icon_name = $(this)[0].classList[1]
    if icon_name == 'mini'
      icon_name = $(this)[0].classList[2]
    $(this).css({ 'background-image': "url('/assets/glyphicons/#{icon_name}.png')", 'background-repeat': 'no-repeat'})
