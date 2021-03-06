class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :note_content
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
