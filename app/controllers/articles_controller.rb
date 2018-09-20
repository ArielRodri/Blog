 class ArticlesController < ApplicationController
  def new
  	@Article = Article.new
  end
def create
	@Article = Article.new(params[:Article])
    if @Article.save
      rediret_to @Article
    else
      rediret_to new
  end
  
end

  def show
  end

  def index
  	 @articulos = Article.all  

  end 
  private	
  def article_params
  	params.require(:Article).permit(:tittle, :body)
  end
end 
  