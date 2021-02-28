class AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    render json: user
  end
  #   skip_before_action :authorized, only: [:create, :auto_login]
   
  # def create
  #   @user = User.find_by(username: user_login_params[:username])
   
  #   if @user && @user.authenticate(user_login_params[:password]) 
  #     @token = encode_token({ user_id: @user.id }) 
  #     render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted  
  #   else
  #     render json: { message: 'Invalid username or password' }, status: :unauthorized
  #   end
  # end

  # def auto_login
  #   @token = params[:token]
  #   user = User.find(JWT.decode(@token, "put your secret password here", true, algorithm: 'HS256')[0]["user_id"])
  #   render json: user
  # end

  # private

  # def user_login_params
  #   params.require(:user).permit(:username, :password)
  # end
end

# if i did a buy byebug in create, how would i be able to see the usename 
# and password?

# params[:username]
# User.find_by(username: params[:username])

# above will show a user instannce.