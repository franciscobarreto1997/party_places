class AddUserToVenues < ActiveRecord::Migration[5.1]
  def change
    add_reference :venues, :user, foreign_key: true
  end
end
