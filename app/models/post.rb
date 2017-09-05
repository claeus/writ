class Post < ApplicationRecord
	mount_uploader :image, AvatarUploader
	
  belongs_to :user

  default_scope { order("created_at DESC") }

  validates :title, :body, presence: true

  
end
