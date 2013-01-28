# application.js.coffee
# load jQuery beforehand
//= require jquery_ujs

# Weinexoten
$ ->
  ##
  # Flash messages
  # Close on click
  $('.flash-message .close').click ->
    $(this).parent().fadeOut()

  $('.flash-message').click ->
    $(this).fadeOut()

  $('#submit-button').click (e) ->
    e.preventDefault()
    $this = $(this)
    $this.parents('#signup-formular').hide()
    $('#thank-you').show()
