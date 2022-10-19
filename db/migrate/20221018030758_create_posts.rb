class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :product_name
      t.integer :product_id
      t.integer :product_quantity
      t.text :product_description
      t.string :product_availability
      t.timestamps
    end
  end
end
