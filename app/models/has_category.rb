class HasCategory < ApplicationRecord
  belongs_to :articles
  belongs_to :categories
end
