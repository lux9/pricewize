class Product < ApplicationRecord
  paginates_per 10
  has_many :prices
  belongs_to :category
  validates :views, numericality: { only_integer: true }
  # def image_link
  #   return @image_link
  # end
end
