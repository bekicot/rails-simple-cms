class HomeController < ApplicationController
	def show
		@users = User.all
	end

	# def show
	# 	raise 'error2'
	# end
end
