class Product < ApplicationRecord
  has_many :prices
  belongs_to :category
  validates :views, numericality: { only_integer: true }
end
