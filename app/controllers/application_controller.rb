class ApplicationController < ActionController::Base
    include ActionController::Cookies
    
    # before_action :authorized
    # def authorized
    # return render json:{error: "Please register"}, status: :unauthorized
    # #unless session.include? :kra_pin
    # end
end
