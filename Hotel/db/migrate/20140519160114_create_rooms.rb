class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.float :room_price
      t.integer :room_max
      t.string :room_photo
      t.string :room_desc
      t.string :room_type
      t.integer :branch_id

      t.timestamps
    end
  end
end
