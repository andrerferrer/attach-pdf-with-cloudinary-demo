class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def show
    @article = Article.find params[:id]
  end

  private

  def article_params
    params.require(:article).permit(Article.attributes)
  end
end
