require 'simply_captcha_helpers'

# Helpers will be available in all controllers
ActionController::Base.send :include, SimplyCaptcha::Helpers

# Helpers will be available in the views
ActionView::Base.send :include, SimplyCaptcha::Helpers

# Before filter (will be run for every action in every controller)
ActionController::Base.send :prepend_before_filter, :initialize_captcha
