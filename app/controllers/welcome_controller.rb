class WelcomeController < ApplicationController
	def index 
		@articulos = Article.all
	end
		def contactos
			@email = "ariel-roda@hotmail.com"
	end
end