class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception 
	before_action :cargar_registros
	def cargar_registros
		@categorias = Category.all
	end
	 def authenticate_editor!
  	redirec_to root_path, notice: "No tienes permiso para esta aqui." unless user_signed_in? && current_user.is_editor?
  end
  def authenticate_admin!
  	redirec_to root_path, notice: "No tienes suficientes" unless user_signed_in? && current_user.is_admin?
  end
end