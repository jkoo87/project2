class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.string :description
      t.string :img_url
      t.string :cooking_time, null: false
      t.string :cooking_level, null: false
      t.boolean :allow_reviews
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
