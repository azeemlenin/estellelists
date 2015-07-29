class CreatePosts < ActiveRecord::Migration
  def change
   create_table :posts do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :title
      t.text :desc
      t.string :category
      t.string :secret
      t.integer :cat_id

      t.timestamps null: false
    end
  end
end
