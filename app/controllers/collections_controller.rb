class CollectionsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
        render json: Collection.all
        end
end
