class CollectionsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
        render json: Collection.all
    end

    def show 
        collection = Collection.find(params[:id])
        render json: collection
    end 

    def create
        collection = Collection.create(user_id: params["user_id"], plant_id: params["plant_id"])
        render json: collection
    end




    # def show
    #     @invoice = Invoice.find(params[:id])
    #     @user = User.find(params[:user_id])
    #   end
end
