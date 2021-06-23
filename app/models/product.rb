class Product < ApplicationRecord
  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :stock, numericality: { only_integer: true }

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax
  end

  def total
    total = price + tax
    return total
  end
end
