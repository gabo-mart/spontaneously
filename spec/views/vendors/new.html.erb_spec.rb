require 'rails_helper'

RSpec.describe "vendors/new", type: :view do
  before(:each) do
    assign(:vendor, Vendor.new(
      :company => "MyString",
      :password => ""
    ))
  end

  it "renders new vendor form" do
    render

    assert_select "form[action=?][method=?]", vendors_path, "post" do

      assert_select "input#vendor_company[name=?]", "vendor[company]"

      assert_select "input#vendor_password[name=?]", "vendor[password]"
    end
  end
end
