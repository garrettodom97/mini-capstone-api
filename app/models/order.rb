class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def money_math
    self.subtotal = 0
    users_carted_products.each do |carted_product|
      self.subtotal += carted_product.product.price * carted_product.quantity
    end
    self.tax = self.subtotal * 0.09
    self.total = self.subtotal + self.tax
    self.save
  end
end
