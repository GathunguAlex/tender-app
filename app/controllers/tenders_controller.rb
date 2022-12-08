class TendersController < ApplicationController
    
#helps prevent risks that comes with mass assignment of create method
wrap_parameters format:[]
skip_before_action :verify_authenticity_token
#when we want to handle response in the same way, this case activerecord not found from find
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

def index
    tenders = Tender.all
    render json: tenders #only: [:id,:tendername]
end

def show
    #find tender using ID
    tenders = find_tender
    
#id and name limit what is sent to the front end
#you can also add methods to be sent to the front end 
    render json: tenders #only: [:id, :tendername] #methods: [:method]
end  

def create
  tenders = Tender.create(tenders_params)
  render json: tenders, status: :created
end


def update
tenders = find_tender
    tenders.update(tenders_params) 
    render json: tenders, status: :accepted
end

def destroy 
    tenders = find_tender
      tenders.destroy
    head :no_content

   end

end

private
 #This private method works with >wrap_parameters format:[] to limit what a user can input
def tenders_params
    params.permit(:tendername, :tendernumber)
end 

def find_tender
Tender.find(params[:id])
end

def render_not_found_response
      render json: {error: "Tender not found"}, status: :not_found
end

