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
require 'rails_helper'

RSpec.describe Recipe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
