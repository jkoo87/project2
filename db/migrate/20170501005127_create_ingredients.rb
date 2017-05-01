class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :list
      t.references :recipe, index: true, foreign_key: true
      t.timestamps
    end
  end
end
