class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :due_date
      t.text :read_me
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
