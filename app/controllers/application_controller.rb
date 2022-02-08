class ApplicationController < ActionController::Base
def blank_square_form
  render({ :template =>"calculation_templates/square_form.html.erb" })
end
  def calculate_square
    # params = {"elephant"=>"42"}
    @num = params.fetch("elephant").to_f
    @square_of_num = @num * @num 
    render({ :template =>"calculation_templates/square_results.html.erb" })
  end

  def random_form
    render({ :template =>"calculation_templates/random_form.html.erb" })
  end
  
  def calculate_random
    @lower=params.fetch("user_min").to_f
    @upper=params.fetch("user_max").to_f
    @result=rand(@lower..@upper).to_f
    render({ :template =>"calculation_templates/rand_results.html.erb" })
  end
  def square_root_form
    render({ :template =>"calculation_templates/square_root_form.html.erb" })
  end
  def calculate_square_root
    @num_user = params.fetch("user_square_root").to_f
    @square_root_of_num = @num_user ** 0.5
    render({ :template =>"calculation_templates/square_root_results.html.erb" })
  end
  def payment_form
    render({ :template =>"calculation_templates/payment_form.html.erb" })
  end
  def calculate_payment
    @apr_user1 = params.fetch("apr_user").to_f
    @years_user1 = params.fetch("years_user").to_f
    @principal_user1 = params.fetch("principal_user").to_f
   @payment_final = @apr_user1 ** 0.5
    render({ :template =>"calculation_templates/payment_results.html.erb" })
  end




end
