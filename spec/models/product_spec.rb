require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }

  it("titleizes the name of a product") do
    product = Product.create({name: "gold fish", cost: 1.00, country_of_origin: "USA"})
  end

  it { should validate_presence_of :name }

  it { should validate_numericality_of(:cost).only_integer }

  it { should validate_presence_of :country_of_origin}
end