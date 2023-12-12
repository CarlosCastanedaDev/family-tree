# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  recipe_name :string
#  image_url   :string
#  description :text
#  ingredients :text
#  directions  :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Recipe < ApplicationRecord
  validates_presence_of :recipe_name, :image_url, :description, :ingredients, :directions
  
  belongs_to :author, required: true, class_name: "Person", foreign_key: "author_id"

  mount_uploader :image_url, RecipeImageUploader
end
