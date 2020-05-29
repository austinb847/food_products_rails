require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }

  it("titleizes the name of a product") do
    product = Product.create({name: "gold fish", cost: 1.00, country_of_origin: "USA"})
  end
end