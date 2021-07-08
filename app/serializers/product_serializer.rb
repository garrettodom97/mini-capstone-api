class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :stock

  belongs_to :supplier
  has_many :orders
  has_many :categories
  has_many :images
end
