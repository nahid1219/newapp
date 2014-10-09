class CreateProjectusers < ActiveRecord::Migration
  def change
    create_table :projectusers do |t|
      t.integer :project_id,:null => false
      t.integer :user_id,:null => false

      t.timestamps
    end
    add_index :projectusers,[:project_id,:user_id]
  end
end
