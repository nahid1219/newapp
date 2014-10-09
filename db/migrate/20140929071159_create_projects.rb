class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projectname,:null => false

      t.timestamps
    end
  end
end
