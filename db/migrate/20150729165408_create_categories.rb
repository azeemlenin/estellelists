class CreateCategories < ActiveRecord::Migration
  def change
        create_table :categories do |t|
      t.string :post_name
    end
  end
end
