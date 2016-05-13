require 'rails_helper'

RSpec.describe "vendors/show", type: :view do
  before(:each) do
    @vendor = assign(:vendor, Vendor.create!(
      :company => "Company",
      :password => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company/)
    expect(rendered).to match(//)
  end
end
