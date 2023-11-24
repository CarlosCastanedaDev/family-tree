class AddImageUrlToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :image_url, :string
  end
end
