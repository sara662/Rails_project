class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branch_name
      t.string :branch_tel
      t.string :branch_address
      t.string :branch_photo
      t.integer :myhotel_id

      t.timestamps
    end
  end
end
