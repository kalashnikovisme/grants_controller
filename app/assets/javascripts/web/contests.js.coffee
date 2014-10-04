#= require jquery

$(document).ready ->
  $('#actual_tabs').tabs()
  $('#all_link').parents().first().addClass('active')
  $('#actual_link').click ->
    $('#all').parents().first().chidren('div').hide()
    $('#all').show()
    $('#all_link').parents('ul').first().children('li').removeClass('active')
    $('#all_link').parents().first().addClass('active')
