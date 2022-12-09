class UserController < ApplicationController

    require "bycrpt"
     skip_before_action :authorized, only: :create
     skip_before_action :verify_authenticity_token

  def logout
  session.delete :username
  head :no_content
  end

  def create
    user = User.create!(user_params)
    render json: user
  end

  def show
    current_user = User.find(session[:username])
    render json: current_user 
end

def tenders
    #find tender using ID
    tenders = find_tender
    
#id and name limit what is sent to the front end
#you can also add methods to be sent to the front end 
    render json: tenders #only: [:id, :tendername] #methods: [:method]
end  

def index
    tenders = Tender.all
    render json: tenders #only: [:id,:tendername]
end

end


private

def render_unprocessable_entity(invalid)
    render json:{error: invalid.record.erros}, status: :unprocessable_entry

end

def user_params
    params.permit(:username, :password) 
end

def tenders_params
    params.permit(:tendername, :tendernumber)
end 

def find_tender
Tender.find(params[:id])
end




