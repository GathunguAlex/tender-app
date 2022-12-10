class UsersController < ApplicationController

    def index
        users= User.all
        render json: users
        end

        def create
            user = User.create(user_params)
            if user.valid?
              session[:user_id] = user.id
              render json: user, status: :created
            else
              render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
            end
          end

        
          def show
            user = User.find_by(id: session[:user_id])
            if user
              render json: user
            else
              render json: { error: "Not authorized" }, status: :unauthorized
            end
          end

          def logout
            session.delete :username
            head :no_content
            end

          private
          def user_params
            params.permit(:username, :password, :password_confirmation)
          end

        

        end


#      skip_before_action :authorized, only: :create
#      skip_before_action :verify_authenticity_token

#  

#   def create
#     user = User.create!(user_params)
#     render json: user
#   end

#   def show
#     current_user = User.find(session[:username])
#     if current_user
#     render json: current_user 
#     else render
#         json:{ error:"please register"}, status: :unauthorized
# end

# def tenders
#     #find tender using ID
#     tenders = find_tender
    
# #id and name limit what is sent to the front end
# #you can also add methods to be sent to the front end 
#     render json: tenders #only: [:id, :tendername] #methods: [:method]
# end  

# def index
#     tenders = Tender.all
#     render json: tenders #only: [:id,:tendername]
# end

# end


# private

# def render_unprocessable_entity(invalid)
#     render json:{error: invalid.record.erros}, status: :unprocessable_entry

# end

# def user_params
#     params.permit(:username, :password) 
# end

# def tenders_params
#     params.permit(:tendername, :tendernumber)
# end 

# def find_tender
# Tender.find(params[:id])
# end


 

