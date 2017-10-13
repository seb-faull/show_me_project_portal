class Tag < ApplicationRecord
	has_many :project_tag
	has_many :projects, through: :project_tag
end
