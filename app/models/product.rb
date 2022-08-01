class Product < ApplicationRecord
  paginates_per 10
  has_many :prices
  belongs_to :category
  validates :views, numericality: { only_integer: true }
end
