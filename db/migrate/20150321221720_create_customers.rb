class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :address
      t.text :city
      t.text :country
      t.string :postal_code
      t.string :email
      t.integer :province_id

      t.timestamps null: false
    end
  end
end
