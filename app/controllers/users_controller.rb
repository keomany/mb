class UsersController < ApplicationController
	
	def view
		@user = User.find(params[:id])
	end
	
	def new
		@user = User.new
	end

    def create
        @user = User.create(params[:user])
        redirect_to users_path
    end

	def index
		@users = User.all
	end
end
