class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def show
    supplier_id = params[:id]
    supplier = Supplier.find(supplier_id)
    render json: supplier
  end

  def create
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    supplier_id = params[:id]
    supplier = Supplier.find(supplier_id)

    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number

    if supplier.save
      render json: supplier
    else
      render json: { errors: supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    supplier_id = params[:id]
    supplier = Supplier.find(supplier_id)
    supplier.destroy

    render json: { message: "supplier successfully deleted" }
  end
end
