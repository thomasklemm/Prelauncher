# application.js.coffee
# load jQuery beforehand
//= require jquery_ujs

# Prelauncher
$ ->
  # Flash messages
  # Close on click
  $('.flash-message .close').click ->
    $(this).parent().fadeOut()

  $('.flash-message').click ->
    $(this).fadeOut()

  # Hide form on submit
  # and display success note
  $('#new_subscriber').submit ->
    $this = $(this)
    email = $this.children('#subscriber_email').val()
    if email?
      if email isnt ''
        $this.hide()
        $('#success-note').show()
