require 'rails_helper'

RSpec.describe "recipes/edit", type: :view do
  let(:recipe) {
    Recipe.create!(
      recipe_name: "MyString",
      image_url: "MyString",
      description: "MyText",
      ingredients: "MyText",
      directions: "MyText"
    )
  }

  before(:each) do
    assign(:recipe, recipe)
  end

  it "renders the edit recipe form" do
    render

    assert_select "form[action=?][method=?]", recipe_path(recipe), "post" do

      assert_select "input[name=?]", "recipe[recipe_name]"

      assert_select "input[name=?]", "recipe[image_url]"

      assert_select "textarea[name=?]", "recipe[description]"

      assert_select "textarea[name=?]", "recipe[ingredients]"

      assert_select "textarea[name=?]", "recipe[directions]"
    end
  end
end
