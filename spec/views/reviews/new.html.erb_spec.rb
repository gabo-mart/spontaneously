require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_title[name=?]", "review[title]"

      assert_select "textarea#review_description[name=?]", "review[description]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"
    end
  end
end
