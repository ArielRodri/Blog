class ApplicationController < ActionController::Base
	protec_from_forgery with: :exception 
end
