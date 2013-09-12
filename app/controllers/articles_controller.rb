class ArticlesController < ApplicationController
	before_filter :authenticate_user!
	before_action :article_params, only: [:create]

	def index
		ap current_user
		@article = current_user.articles.all
	end

	def edit
		@article = current_user.articles.find(params[:id])
	end

	def show
		@article = current_user.articles.find(params[:id])		
	end

	def update

	end

	def destroy
		@article = current_user.articles.find(params[:id])
	end

	def create
		ap article_params
		@article = current_user.articles.new(article_params)
		if @article.save
			redirect_to article_path(@article.id)
		else
			render 'new'
		end
	end

	def new

		@article = current_user.articles.new()
		@article_cat = Category.all
		ap @article_cat
	end

	private

  def article_params
    params.require(:article).permit(:title, :body, :name, :category_id)
  end
end