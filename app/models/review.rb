class Review < ApplicationRecord
  belongs_to :product
  validates :author, :rating, :content_body, presence: true
  # validates_numericality_of :rating, in: 1..5
  validates_inclusion_of :rating, in: 1..5
  validates_length_of :content_body, minimum: 50, maximum: 250
  # validates_length_of :content_body, maximum: 250
end