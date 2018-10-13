class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :author
      t.text :title
      t.text :category
      t.text :content
      t.timestamps
    end
  end
end
