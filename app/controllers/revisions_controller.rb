class RevisionsController < ApplicationController

  def index
    @article = Article.find(params[:article_id])
    @revision = @article.revisions
  end
end
