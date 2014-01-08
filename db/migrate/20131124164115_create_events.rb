class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :desc
      t.datetime :datetime
      t.integer :room_id
      t.integer :bldg_id
      t.integer :facebook_id

      t.timestamps
    end
  end
end
