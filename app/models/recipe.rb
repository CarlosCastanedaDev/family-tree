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
  validates :recipe_name, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true
  
  belongs_to :author, required: true, class_name: "Person", foreign_key: "author_id"

  mount_uploader :image_url, RecipeImageUploader
end
