class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:capitalize_product)

  private
    def capitalize_product
      self.name = self.name.titleize
    end
end