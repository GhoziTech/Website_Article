class AddImageToSantris < ActiveRecord::Migration[7.1]
  def change
    add_column :santris, :image_url, :string
  end
end
