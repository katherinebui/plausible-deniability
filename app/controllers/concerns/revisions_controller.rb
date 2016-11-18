class RevisionsController < ApplicationController

  def index
    @article = Article.find(params[:article_id])
    @revision = @article.revisions
    # @rev = Revision.all
    # p @rev
  end

  def show
    @revisions = Revision.find(params[:id])
  end

end