class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.string :password_confirmation
      t.string :email
      t.integer :telephone
      t.string :address

      t.timestamps
    end
  end
end
