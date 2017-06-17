class ProfilesController < ApplicationController
	def show
		# Service object
		@profile = Profile.new(current_user)
	end
end