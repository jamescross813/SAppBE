class CreateEquations < ActiveRecord::Migration[6.1]
  def change
    create_table :equations do |t|

      t.timestamps
    end
  end
end
