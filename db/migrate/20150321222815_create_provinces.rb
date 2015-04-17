class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :province_name
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst

      t.timestamps null: false
    end
  end
end
