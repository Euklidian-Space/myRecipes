class AddLikeCountToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :like_count, :integer
  end
end
