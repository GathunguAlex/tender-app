class SessionsController < ApplicationController
    def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
    session[:user_id]= user.id
    render json: user, status: :created
    else
    render json: { error: {"Please register"}}, status: :unauthorized
            
        end
    end
end