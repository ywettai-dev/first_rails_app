class CreateMotorbikes < ActiveRecord::Migration[5.2]
  def change
    create_table :motorbikes do |t|
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
