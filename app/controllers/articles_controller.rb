class ArticlesController < ApplicationController
  def new
  end

  def show
  end

  def index
  	 @articulos = Article.all 
  end
end
 