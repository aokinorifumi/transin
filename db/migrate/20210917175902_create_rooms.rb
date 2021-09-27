class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :beside_id, default: 1
      t.integer :vertical_id, default: 1
      t.string :message, default: "投稿時間管理"

      t.timestamps
    end
  end
end
