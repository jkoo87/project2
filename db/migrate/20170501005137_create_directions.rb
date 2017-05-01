class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.string :recipe_direction
      t.references :recipe, index: true, foreign_key: true
    end
  end
end
