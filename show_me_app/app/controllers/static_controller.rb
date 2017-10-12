class StaticController < ApplicationController

	def home
		@projects = Project.all
		@users = User.all #Line changed
		render template: "projects/index"
	end

end