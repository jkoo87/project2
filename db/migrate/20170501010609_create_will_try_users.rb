class CreateWillTryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :will_try_Users do |t|
      t.references :recipe, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end