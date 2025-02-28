class CollectionsController < ApplicationController

    def index
        render json: Collection.all
    end

    def show 
        collection = Collection.find(params[:id])
        render json: collection
    end 

    def create
        collection = Collection.create(user_id: params["user_id"], plant_id: params["plant_id"])
        render json: collection.to_json({include: [:plant]}) 
    end

    def update
        collection = Collection.find(params[:id])
        collection.update(collection_params)
        render json: collection
      end

    def destroy
        collection = Collection.find(params[:id])
        collection.destroy
        render json: {"Deleted": "deleted", collection: collection}
    end

    private

    def collection_params
        params.require(:collection).permit(:user_id, :plant_id, :nickname)
    end

end
