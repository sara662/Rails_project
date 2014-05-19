class CreateMyhotels < ActiveRecord::Migration
  def change
    create_table :myhotels do |t|
      t.string :hotel_name

      t.timestamps
    end
  end
end
