class Admin::ModeratorsController < Admin::ApplicationController
	def index
		@moderators = Moderator.all
	end

	def edit
		@moderator = Moderator.find(params[:id])
	end

	private

	def moderator_params
		params.require(:moderator).permit(:id, :fullname, :username, :password)
	end	
end