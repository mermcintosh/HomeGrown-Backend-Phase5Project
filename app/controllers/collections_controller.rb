class CollectionsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        collections = Collection.all 
        render json: collections
    end
end
