#= require jquery-ui/tabs

$(document).ready ->
  $('#tabs').tabs()
  $('#tabs ul li').first().addClass('active')
  $('#tabs ul li').click ->
    $(this).parents().first().children('li').removeClass('active')
    $(this).addClass('active')
