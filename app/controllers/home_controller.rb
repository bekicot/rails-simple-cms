class HomeController < ApplicationController
	def show
		@users = User.new
    @article = Article.all
	end

	# def show
	# 	raise 'error2'
	# end
end
