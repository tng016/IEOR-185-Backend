class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.boolean :has_seen

      t.timestamps null: false
    end
  end
end
