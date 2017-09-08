class Post < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged
	mount_uploader :image, AvatarUploader
	
  belongs_to :user

  default_scope { order("created_at DESC") }

  validates :title, :body, presence: true
  has_many :comments, dependent: :destroy
  
end
