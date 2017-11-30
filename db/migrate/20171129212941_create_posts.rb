class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.integer :price
      t.string :subject
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
