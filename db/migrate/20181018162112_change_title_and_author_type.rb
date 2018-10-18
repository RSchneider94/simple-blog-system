class ChangeTitleAndAuthorType < ActiveRecord::Migration[5.2]
  def change
    change_table :posts do |t|
      t.remove :author, :title
      t.string :author
      t.string :title
    end
  end
end
