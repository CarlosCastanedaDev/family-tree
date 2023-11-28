class AddAuthorIdToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :author_id, :integer
  end
end
