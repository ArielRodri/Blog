class WelcomeController < ApplicationController
	def index 
		@articulos = Article.all
	end
		def contacto
			@email = "ariel-roda@hotmail.com"
	end
end