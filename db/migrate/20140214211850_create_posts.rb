class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :category, index: true
      t.references :admin, index: true

      t.timestamps
    end
  end
end
