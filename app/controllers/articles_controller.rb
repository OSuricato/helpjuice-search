class ArticlesController < ApplicationController
  def index
    if params[:query].present?
      @articles = Article.search_by_all(params[:query])
    else
      @articles = Article.all
    end
  end


  def show
    @article = Article.find(params[:id])
  end

  def autocomplete
    render json: Article.search_by_all(params[:query])
  end
end
