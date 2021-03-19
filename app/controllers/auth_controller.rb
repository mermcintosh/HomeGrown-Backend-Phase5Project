class AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user
    render json: user.to_json({include: [:collections => {:include => [:plant]}], except: [:created_at, :updated_at]})
    else
    render json: {error: 'Invalid Username or Password'}
    end
  end

  
end
