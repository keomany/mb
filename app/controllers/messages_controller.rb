class MessagesController < ApplicationController
	def new
		@message = Message.new
		@users = User.all
	end
	def create
		@message = Message.create(params[:text])
        redirect_to messages_path
	end

	def index
		@messages = Message.all
	end

end
