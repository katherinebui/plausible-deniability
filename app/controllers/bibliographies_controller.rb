class BibliographiesController < ApplicationController

  def new
    @article = Article.find(params[:article_id]) # Might break. We're testing article_id vs id
    @bibliography = Bibliography.new
  end

  def create
    @article = Article.find(params[:article_id])
    @bibliography = @article.bibliographies.new(bibliography_params)
    if @bibliography.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:article_id])
  end

  def update
    @article = Article.find(params[:article_id])
    @bibliography = @article.bibliographies.find(params[:id])

    if @bibliography.update(bibliography_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @bibliography = @article.bibliographies.find(params[:id])
    @bibliography.destroy
    redirect_to @article
  end

  private
    def bibliography_params
      params.require(:bibliography).permit(:link_url, :title, :body)
    end


end
