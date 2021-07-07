class AddStatusToCartedProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :carted_products, :status
    add_column :carted_products, :status, :string, default: "carted"
  end
end
