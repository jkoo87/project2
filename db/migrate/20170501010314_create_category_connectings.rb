class CreateCategoryConnectings < ActiveRecord::Migration[5.0]
  def change
    create_table :category_connectings do |t|
      t.references :category, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.timestamps
    end
  end
end
