class FootnotesController < ApplicationController

  def new
    @article = Article.find(params[:article_id])
    @footnote = @article.footnotes.new
  end

  def create
    @article = Article.find(params[:article_id])
    @footnote = @article.footnotes.new(footnote_params)

    if @footnote.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:article_id])
    @footnote = @article.footnotes.find(params[:id])
  end

  def update
    @article = Article.find(params[:article_id])
    @footnote = @article.footnotes.find(params[:id])

    if @footnote.update(footnote_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @footnote = @article.footnotes.find(params[:id])
    @footnote.destroy
    redirect_to article_path(@article)
  end

  private
    def footnote_params
      params.require(:footnote).permit(:text, :url)
    end
end
