class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :category, index:true
      t.string :title
      t.text :description
      t.string :location
      t.float :price
      t.string :email
      t.string :phone_number
      t.string :image_url
      t.timestamps null: false
    end
  end
end
