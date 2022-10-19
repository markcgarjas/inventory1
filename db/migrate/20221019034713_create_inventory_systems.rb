class CreateInventorySystems < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_systems do |t|
      t.string :product_name
      t.string :product_type
      t.integer :product_quantity
      t.text :product_description

      t.timestamps
    end
  end
end
