class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
      users = User.all
      render json: User.all.to_json({include: [:collections => {:include => [:plant]}], except: [:created_at, :updated_at]})
      end

    def show
      user = User.find(params[:id])
      render json: user.to_json({include: [:collections => {:include => [:plant]}], except: [:created_at, :updated_at]})
    end

    def create
        user = User.create(user_params)
       
        if user.valid?
          render json: { user: user, status: :created}
        else
          render json: { error: 'failed to create user', status: :not_acceptable}
        end
      end
    
    # private
      
      def user_params
        params.require(:user).permit(:username, :password)
      end
end
