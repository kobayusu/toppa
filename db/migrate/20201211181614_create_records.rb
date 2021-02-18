class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :text
      t.date :start_time
      t.references :user
      t.references :aspiration
      t.timestamps
    end
  end
end
