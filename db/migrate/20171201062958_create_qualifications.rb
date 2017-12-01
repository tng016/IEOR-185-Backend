class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.string :title
      t.string :description
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
