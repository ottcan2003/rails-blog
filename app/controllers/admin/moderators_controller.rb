class Admin::ModeratorsController < Admin::ApplicationController
	def index
		@moderators = Moderator.all
	end
end