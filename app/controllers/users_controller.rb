 class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@posts = @user.posts
	end

	def new
		@user = User.new
	end

	def create
		puts params.inspect
		@user = User.new(user_params)
	  if @user.save
	    redirect_to user_path @user
	  else
	    render 'new'
	  end
	end

	def edit
		puts params.inspect
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		@user.save
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy

		else

		end
		redirect_to users_path
	end

	private
	
	def user_params
		params.require(:user).permit(:username, :password)
	
		
	end
end
