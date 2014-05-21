class CreateBranchComments < ActiveRecord::Migration
  def change
    create_table :branch_comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :branch_id

      t.timestamps
    end
  end
end
