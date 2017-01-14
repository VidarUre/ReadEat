class RemoveRatingFromRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :rating, :string
  end
end
