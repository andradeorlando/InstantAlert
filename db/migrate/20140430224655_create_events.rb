class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :date
      t.time :hour
      t.integer :user_id

      t.timestamps
    end
  end
end
