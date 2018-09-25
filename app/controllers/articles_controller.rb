class ArticlesController < ApplicationController
    before_action :set_article, only: [:show,:edit,:update]

    def index
      @articles = Article.all
end
    def show
end
def new
  @article = Article.new
end

def create

	@article = Article.new(article_params)
  respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end  
    #if @article.save
     # redirect_to @article, notice: "Articulo #{@article.tittle} creado"
    #else
   #   redirect_to :new
  #end

end

  def edit

end
  def update
    if @article.update(article_params)
      redirect_to @article
    else
        render :edit 
    end
end


  private	
  def article_params
  	params.require(:article).permit(:title, :body)
end
  def set_article
    @Article = Article.find(params[:id])
  end
end 
