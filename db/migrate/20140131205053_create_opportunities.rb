class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.references :contact, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
