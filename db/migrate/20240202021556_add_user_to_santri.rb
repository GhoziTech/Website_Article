class AddUserToSantri < ActiveRecord::Migration[7.1]
  def change
    add_reference :santris, :user
  end
end
