class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.integer :rating
      t.text :comment
      t.timestamps
    end
  end
end
