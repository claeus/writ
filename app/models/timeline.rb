class Timeline
	# extend ActiveModel::Naming

	def initialize(user)
		@user = user
	end

	def to_partial_path
		'timelines/timeline'
	end


	def posts
		Post.where(user_id: post_user_ids)
	end
	
	private

	def post_user_ids
		[@user.id] + @user.followed_user_ids
	end
	
end