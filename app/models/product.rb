class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:capitalize_product)
  validates :name, :country_of_origin,  presence: true
  validates_numericality_of :cost, only_integer: true

  scope :search, -> (product_name) { where("LOWER(name) like ?", "%#{product_name}%")}
  scope :three_recently_added, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
    select("products.id, products.name, products.country_of_origin, products.cost, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.name")
    .order("reviews_count DESC")
    .limit(3)
    )}



  private
    def capitalize_product
      self.name = self.name.titleize
    end
end