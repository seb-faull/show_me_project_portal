class StaticController < ApplicationController

	def home
		@projects = Project.all
		@users = User.all
		render template: "projects/index"
	end

end