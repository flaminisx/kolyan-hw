class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@mail = @user.email
		@posts = @user.posts
	end
	def edit
		@user = User.find(params[:id])
		redirect_to user_path unless @user == current_user 
	end
	def update
		@user = User.find(params[:id])
		@user.update user_params
		redirect_to user_path
	end
	def user_params
    params.require(:user).permit :avatar
  	end
end
