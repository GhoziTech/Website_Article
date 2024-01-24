class CreateSantris < ActiveRecord::Migration[7.1]
  def change
    create_table :santris do |t|
      t.string :nama
      t.string :kelas

      t.timestamps
    end
  end
end
