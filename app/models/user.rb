class User < ApplicationRecord
	include Concerns::Following

  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_many :posts

 	validates :username, presence: true, uniqueness: true


 	def following? user
	 		followed_user_ids.include? user.id
	 	end

	 	def can_follow?(user)
	 		self != user
	 	end

	 	def follow user
	 		followed_users << user
	 	end

	 	def unfollow user
	 		followed_users.delete(user)
	 	end

end
