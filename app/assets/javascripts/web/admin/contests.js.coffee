#= require jquery

$(document).ready ->
  $('#contest_end_date').datepicker({
    format: "dd/mm/yyyy",
    language: "ru"
  })
