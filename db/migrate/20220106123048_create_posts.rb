class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :body
      t.integer :parent_id

      t.timestamps
    end
  end
end
