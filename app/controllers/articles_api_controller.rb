class ArticlesApiController < ApplicationControllerApiController
  def index
    @articles = Article.all
    render json: @articles
  end
end
