class User < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_many :posts

 	has_many :followed_user_relationship, foreign_key: :follower_id, class_name: 'Following'
 	has_many :followed_users, through: :followed_user_relationship

 	has_many :follower_relationships, foreign_key: :followed_user_id, class_name: 'Following'
 	has_many :followers, through: :follower_relationships

 	def following? user
 		followed_user_ids.include? user.id
 	end

 	def follow user
 		followed_users << user
 	end

 	def unfollow user
 		followed_users.delete(user)
 	end

end
