class ArticlesController < ApplicationController
	before_filter :authenticate_user!
	before_action :article_params, only: [:create]

	def index
		@article = current_user.articles.all

	end

	def edit
		@article = current_user.articles.find(params[:id])
		tags = @article[:tags]
		ap tags
	end

	def show
		@article = current_user.articles.find(params[:id])	
		tags = @article[:tags]
		@article[:tags] = tags.join(',')	
	end

	def update
		@article = current_user.articles.new(article_params)
		redirect_to article_path(@article.id)
	end

	def destroy
		@article = current_user.articles.find(params[:id])
		@article.destroy
		redirect_to @article
	end

	def create
		@article = current_user.articles.new(article_params)
		ap article_params
		ap @article[:tags]
		@article[:tags] = Array[*article_params['tags'].split(',')]
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
    params.require(:article).permit(:title, :body, :name, :category_id, :tags)
  end
end