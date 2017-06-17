class Profile
	def initialize(user)
		@user = user
	end

	def new_post
		Post.new
	end

	def timeline
		Timeline.new(@user)
	end
end