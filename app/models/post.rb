class Post < ApplicationRecord
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "80x80>" }, default_url: "/images/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  belongs_to :user

  default_scope { order("created_at DESC") }

  validates :title, :body, presence: true

  
end
