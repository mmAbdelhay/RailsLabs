class ArticlesApiController < ApplicationControllerApiController
  def index
    @articles = Article.find(user_id = logged_in_user.id)
    render json: @articles
  end
end
