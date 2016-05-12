require 'rails_helper'

RSpec.describe "packages/index", type: :view do
  before(:each) do
    assign(:packages, [
      Package.create!(
        :itinerary => "Itinerary",
        :ship => "Ship",
        :dates => "Dates",
        :duration => "Duration",
        :price => "9.99",
        :rooms => 1,
        :people => 2,
        :room_type => "Room Type",
        :user => nil
      ),
      Package.create!(
        :itinerary => "Itinerary",
        :ship => "Ship",
        :dates => "Dates",
        :duration => "Duration",
        :price => "9.99",
        :rooms => 1,
        :people => 2,
        :room_type => "Room Type",
        :user => nil
      )
    ])
  end

  it "renders a list of packages" do
    render
    assert_select "tr>td", :text => "Itinerary".to_s, :count => 2
    assert_select "tr>td", :text => "Ship".to_s, :count => 2
    assert_select "tr>td", :text => "Dates".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Room Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
