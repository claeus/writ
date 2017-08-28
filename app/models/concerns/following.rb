module Concerns
	module Following
		extend ActiveSupport::Concern

		included do
			has_many :followed_user_relationship, foreign_key: :follower_id, class_name: 'Following'
		 	has_many :followed_users, through: :followed_user_relationship

		 	has_many :follower_relationships, foreign_key: :followed_user_id, class_name: 'Following'
		 	has_many :followers, through: :follower_relationships
		end

		


	end
end

