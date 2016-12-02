class UsersController < ApplicationController
	def show
		@mail = current_user.email
		@posts = User.find(params[:id]).posts
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
		redirect_to user_root unless @user == current_user 
	end
	def update
		@user = User.find(params[:id])
		@user.update user_params
		redirect_to user_root
	end
	def user_params
    params.require(:user).permit :avatar
  	end
end
