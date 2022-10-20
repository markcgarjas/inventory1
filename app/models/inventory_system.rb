class InventorySystem < ApplicationRecord
  validates :product_name, presence: true
  validates :product_type, presence: true
  validates :product_quantity, presence: true
  validates :product_description, presence: true
end

