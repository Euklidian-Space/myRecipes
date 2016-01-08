class AddNumOfLikesToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :likes, :integer
  end
end
