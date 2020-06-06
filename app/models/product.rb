class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:capitalize_product)
  validates :name, :country_of_origin,  presence: true
  validates_numericality_of :cost, only_integer: true

  scope :search, -> (product_name) { where("LOWER(name) like ?", "%#{product_name}%")}
  scopre :three_recently_added, -> { order(created_at: :desc).limit(3)}
  private
    def capitalize_product
      self.name = self.name.titleize
    end
end