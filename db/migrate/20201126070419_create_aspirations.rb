class CreateAspirations < ActiveRecord::Migration[6.0]
  def change
    create_table :aspirations do |t|
      t.string :title
      t.string :detail
      t.datetime :start_time
      t.string :category
      t.references :user
      t.timestamps
    end
  end
end
