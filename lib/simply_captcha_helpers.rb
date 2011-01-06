module SimplyCaptcha

  module Helpers

    # initialize captcha with random value in the <10,19> range OR use the previously generated number if request is other than GET
    def initialize_captcha
      @captcha_number = request.get? ? 10 + rand(10) : params[:captcha_number]
    end

    # view helper to render the captcha question
    def captcha_verification
      render 'captcha/captcha'
    end

    # captcha verification; it takes a model as a first agument to add the captcha error to (in case of a failed captcha test)
    def verify_captcha(model, number, result)
      if number.to_i + 1 != result.to_i
        model.errors.add_to_base(t(:captcha_bad_calculation))
        false
      else
        true
      end
    end

  end

end
