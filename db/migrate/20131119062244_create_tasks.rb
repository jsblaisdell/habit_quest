class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :due_date
      t.integer :value
      t.string :repeat
      t.boolean :status

      t.timestamps
    end
  end
end
