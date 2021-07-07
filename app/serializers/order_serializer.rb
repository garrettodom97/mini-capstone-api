class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :tax, :total
end
