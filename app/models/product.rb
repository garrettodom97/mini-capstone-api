class Product < ApplicationRecord
  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :stock, numericality: { only_integer: true, greater_than: 0 }

  belongs_to :supplier

  has_many :category_products
  has_many :categories, through: :category_products

  has_many :cartedProducts
  has_many :orders, through: :cartedProducts

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
