class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :value
      t.references :user, index: true

      t.timestamps
    end
  end
end
