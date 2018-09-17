class ArticlesController < ApplicationController
  def new
  end

  def show
  end

  def index
  		@articulo = Article.all 
  end
end
