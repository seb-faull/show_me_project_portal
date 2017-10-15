class Project < ApplicationRecord
	
	has_attached_file :image

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :title, :description, presence: true

  has_many :tags

end