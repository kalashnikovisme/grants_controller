#= require jquery

$(document).ready ->
  $('#actual_tabs').tabs()
  $('#all_link').parents().first().addClass('active')
  $('#actual_link').click ->
    $('#all').show()
    $('#all_link').parents('ul').first().children('li').removeClass('active')
    $('#all_link').parents().first().addClass('active')
