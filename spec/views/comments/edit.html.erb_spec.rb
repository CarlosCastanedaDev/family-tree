require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  let(:comment) {
    Comment.create!(
      photo_id: 1,
      body: "MyText",
      author_id: 1
    )
  }

  before(:each) do
    assign(:comment, comment)
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(comment), "post" do

      assert_select "input[name=?]", "comment[photo_id]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[author_id]"
    end
  end
end
