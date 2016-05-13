require 'rails_helper'

RSpec.describe "packages/show", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
      :itinerary => "Itinerary",
      :ship => "Ship",
      :dates => "Dates",
      :duration => "Duration",
      :price => "9.99",
      :rooms => 1,
      :people => 2,
      :room_type => "Room Type",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Itinerary/)
    expect(rendered).to match(/Ship/)
    expect(rendered).to match(/Dates/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Room Type/)
    expect(rendered).to match(//)
  end
end
