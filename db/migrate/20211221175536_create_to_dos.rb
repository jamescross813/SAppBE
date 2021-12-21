class CreateToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :to_dos do |t|
      t.string :todo
      t.string :dodate
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
