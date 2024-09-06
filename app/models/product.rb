class Product < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy
  validates :name, :price, :category, :artist, presence: true
  include PgSearch::Model
  pg_search_scope :search_product,
    against: [ :name, :category, :artist ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
