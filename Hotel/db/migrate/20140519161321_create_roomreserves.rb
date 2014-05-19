class CreateRoomreserves < ActiveRecord::Migration
  def change
    create_table :roomreserves do |t|
      t.date :check_in
      t.date :check_out
      t.integer :user_id
      t.integer :room_id
      t.integer :branch_id

      t.timestamps
    end
  end
end
