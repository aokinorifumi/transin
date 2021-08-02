class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :category_id, null: false
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :delivery_month_id, null: false
      t.integer :delivery_day_id, null: false
      t.integer :delivery_time_id, null: false
      t.text :detail

      t.timestamps
    end
  end
end
