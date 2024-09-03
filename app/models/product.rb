class Product < ApplicationRecord
  belongs_to :user
  has_one :purchase

  validates :name, :price, :category, :artist, presence: true
end
