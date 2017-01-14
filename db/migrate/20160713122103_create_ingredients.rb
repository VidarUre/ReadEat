class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :amount
      t.references :recipe
      t.timestamps
    end
  end
end
