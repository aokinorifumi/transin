class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :beside_id
      t.integer :vertical_id
      t.text :message

      t.timestamps
    end
  end
end
