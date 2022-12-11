class ApplicationController < ActionController::Base
    include ActionController::Cookies
    skip_before_action :verify_authenticity_token
private

def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end



    # before_action :authorized
    # def authorized
    # return render json:{error: "Please register"}, status: :unauthorized
    # #unless session.include? :kra_pin
    # end
end
