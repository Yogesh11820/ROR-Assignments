class ArticlesController < ApplicationController

  helper_method :current_user
  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  
 def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to articles_path, notice: 'Article created successfully'
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

  private

    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
end
