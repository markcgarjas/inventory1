class InventorySystemsController < ApplicationController
  before_action :set_inventory_system, only: [:show, :edit, :update, :destroy]

  def index
    @inventory_systems = InventorySystem.all
  end

  def new
    @inventory_system = InventorySystem.new
  end

  def create
    @inventory_system = InventorySystem.new(inventory_system_params)
    if @inventory_system.save
      redirect_to inventory_systems_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end



  def update
    if @inventory_system.update(inventory_system_params)
      redirect_to inventory_systems_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @inventory_system.destroy
    redirect_to inventory_systems_path
  end

  def home
  end
  private
end

  def set_inventory_system
    @inventory_system = InventorySystem.find(params[:id])
  end

  def inventory_system_params
    params.require(:inventory_system).permit(:product_name, :product_type, :product_quantity, :product_description)
end