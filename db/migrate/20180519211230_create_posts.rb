class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :category_id
      t.string :author_id
      t.string :integer

      t.timestamps
    end
  end
end
