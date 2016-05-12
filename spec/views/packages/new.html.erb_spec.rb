require 'rails_helper'

RSpec.describe "packages/new", type: :view do
  before(:each) do
    assign(:package, Package.new(
      :itinerary => "MyString",
      :ship => "MyString",
      :dates => "MyString",
      :duration => "MyString",
      :price => "9.99",
      :rooms => 1,
      :people => 1,
      :room_type => "MyString",
      :user => nil
    ))
  end

  it "renders new package form" do
    render

    assert_select "form[action=?][method=?]", packages_path, "post" do

      assert_select "input#package_itinerary[name=?]", "package[itinerary]"

      assert_select "input#package_ship[name=?]", "package[ship]"

      assert_select "input#package_dates[name=?]", "package[dates]"

      assert_select "input#package_duration[name=?]", "package[duration]"

      assert_select "input#package_price[name=?]", "package[price]"

      assert_select "input#package_rooms[name=?]", "package[rooms]"

      assert_select "input#package_people[name=?]", "package[people]"

      assert_select "input#package_room_type[name=?]", "package[room_type]"

      assert_select "input#package_user_id[name=?]", "package[user_id]"
    end
  end
end
