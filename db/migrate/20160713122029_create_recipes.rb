class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :rating
      t.integer :price
      t.string :image
      t.integer :minutes
      t.string :howto
      t.references :user
      t.timestamps
    end
  end
end
