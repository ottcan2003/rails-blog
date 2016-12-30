class Admin::ModeratorsController < Admin::ApplicationController
	def index
		@moderators = Moderator.all
	end

	def edit
		@moderator = Moderator.find(params[:id])
	end

	def update
		byebug
		@moderator = Moderator.find(params[:id])
#		@moderator.update(params)	# this works but 'Strong Parameters' is better
		if @moderator.update(moderator_params)
			flash[:notice] = "Moderator was successfully updated"
			redirect_to admin_moderators_url
		else
			flash[:alert] = "There was a problem updating moderator"
			render 'edit'
		end
	end

	private

	def moderator_params
		params.require(:moderator).permit(:id, :fullname, :username, :password)
	end	
end