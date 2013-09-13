class ArticlesController < ApplicationController
	before_filter :authenticate_user!
	before_filter :article_def, only: [:edit, :show, :update, :destroy]

	def index
		@article = current_user.articles.all

	end

	def edit
	end

	def show
		tags = @article[:tags]
		@article[:tags] = tags.join(',')	
	end

	def update
		article_params['tags'] = Array[*article_params['tags'].split(',')]
		params = article_params
		ap params

		params['tags'] = Array[*article_params['tags'].split(',')]
		ap params
		if @article.update_attributes(params)
			redirect_to article_path(@article.id)
		else
			render 'edit'
		end
	end

	def destroy
		@article.destroy
		redirect_to @article
	end

	def create
		@article = current_user.articles.new(article_params)
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

	def article_def
		@article = current_user.articles.find(params[:id])
	end

  def article_params
    params.require(:article).permit(:title, :body, :name, :category_id, :tags, :picture)
  end
end