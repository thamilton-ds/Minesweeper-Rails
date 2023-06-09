class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.integer :mine
      t.integer :user_id

      t.timestamps
    end
  end
end
