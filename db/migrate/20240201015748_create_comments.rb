class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end











# class CreateComments < ActiveRecord::Migration[7.1]
#   def change
#     create_table :comments do |t|
#       t.bigint :user_id:t.references :, null: false
#       t.text :body

#       t.timestamps
#     end

#     add_foreign_key :comments, :users, column: :user_id
#   end
# end