$(document).ready(function() {
  // Captcha auto fill in
  if ($('#captcha').length > 0 ) {
    var number = $('#captcha .captcha_number').text()
    $('#captcha .captcha_result').attr('value', parseInt(number) + 1)
    $('#captcha').hide()
  }
})
