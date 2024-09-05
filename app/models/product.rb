class Product < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy
  validates :name, :price, :category, :artist, presence: true
end
