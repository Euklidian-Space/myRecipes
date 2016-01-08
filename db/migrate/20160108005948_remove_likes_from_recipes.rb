class RemoveLikesFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :likes
  end
end
