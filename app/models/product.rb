class Product < ApplicationRecord
  validates :description, :name, presence: true, length: {minimum: 3}
  validates :price_in_cents, numericality: {only_integer: true}

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    # Round number to 3 digits after decimal point
    sprintf("%.2f", price_in_dollars)
  end
end
