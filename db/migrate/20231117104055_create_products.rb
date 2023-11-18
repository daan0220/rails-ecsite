class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    unless table_exists?(:products)
      create_table :products do |t|
        t.string :name, null: false
        t.text :description, null: false
        t.integer :price, null: false
        t.integer :stock, default: 0, null: false
        t.timestamps null: false
      end
    end
  end
end
