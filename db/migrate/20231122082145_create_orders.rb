class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :postal_code
      t.string :prefecture
      t.string :address1
      t.string :address2
      t.integer :postage
      t.integer :billing_amount
      t.integer :status
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
