class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :tax, :total

  has_many :carted_products
  has_many :products, through: :carted_products
end
