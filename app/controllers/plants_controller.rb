class PlantsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        plants = Plant.all 
        render json: plants
    end
end
