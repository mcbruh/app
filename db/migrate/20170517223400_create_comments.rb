class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :downvotes
      t.integer :upvotes
      t.timestamps
    end
  end
end
