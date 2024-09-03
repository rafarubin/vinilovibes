class Product < ApplicationRecord
  belongs_to :user

  validates :name, :price, :category, :artist, presence: true
end
