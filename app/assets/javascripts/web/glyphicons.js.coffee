$(document).ready ->
  $('span.glyphicon').each ->
    icon_name = $(this)[0].classList[1]
    $(this).css({ 'background-image': "url('/glyphicons/#{icon_name}.png')", 'background-repeat': 'no-repeat'})
