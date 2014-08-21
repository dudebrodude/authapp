require 'spec_helper'

describe "checkins/edit" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :title => "MyString"
    ))
  end

  it "renders the edit checkin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checkin_path(@checkin), "post" do
      assert_select "input#checkin_title[name=?]", "checkin[title]"
    end
  end
end
