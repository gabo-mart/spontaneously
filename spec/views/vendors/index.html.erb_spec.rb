require 'rails_helper'

RSpec.describe "vendors/index", type: :view do
  before(:each) do
    assign(:vendors, [
      Vendor.create!(
        :company => "Company",
        :password => ""
      ),
      Vendor.create!(
        :company => "Company",
        :password => ""
      )
    ])
  end

  it "renders a list of vendors" do
    render
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
