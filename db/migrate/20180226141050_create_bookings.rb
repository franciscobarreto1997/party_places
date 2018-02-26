class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :date
      t.references :user, foreign_key: true
      t.string :venue
      t.string :references

      t.timestamps
    end
  end
end
