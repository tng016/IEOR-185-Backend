class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :prof_pic
      t.integer :rating

      t.timestamps null: false
    end
  end
end
