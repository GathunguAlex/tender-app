class UserController < ApplicationController

    require "bycrpt"
     skip_before_action :authorized, only: :create
     skip_before_action :verify_authenticity_token

     def login
    user = User.find_by(username: params[:kra_pin])
    if user&.authenticate(params[:password])
        session[:username]= user.kra_pin
      render json: user, status: :created
    else
      render json: { error: "Please register" }, status: :unauthorized
    end
  end

  def logout
  session.delete :username
  head :no_content
  end

  def create
    user = User.create!(user_params)
    render json: user
  end

  def show
    current_user = User.find(session[:kra_pin])
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

def user_params
    params.permit(:username, :password) 
end

def tenders_params
    params.permit(:tendername, :tendernumber)
end 

def find_tender
Tender.find(params[:id])
end



