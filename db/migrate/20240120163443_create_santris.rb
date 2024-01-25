class CreateSantris < ActiveRecord::Migration[7.1]
  def change
    create_table :santris do |t|
      t.string :title
      t.string :deskripsi

      t.timestamps
    end
  end
end
