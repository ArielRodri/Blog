class Article < ApplicationRecord
	belongs_to :user
	validates :title, uniqueness: true
	validates :title,:body,presence: true
	validates :title, length:{in 5..25}
	validates :body, length: {minimun: 5, too_short: "Maximo son %{count`caracteres." }
end
