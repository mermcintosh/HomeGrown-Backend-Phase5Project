class PlantsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

        def index
            render json: Plant.all
        end
    
        def show 
            plant = Plant.find(params[:id])
            render json: plant
        end 
    
        def create
            plant = Plant.create(plant_params)
            render json: plant
        end
    
        def update
            plant = Plant.find(params[:id]).update(plant_params)
            render json: plant
        end 
    
        def destroy 
            plant = Plant.find(params[:id])
            plant.destroy
            render json: {"Deleted": "deleted"}
        end 
        
        private
        def plant_params
            params.require(:plant).permit(:name, :category, :description, :light, :watering, :soil, :image)
        end
    
end
