require 'spec_helper'

describe "checkins/new" do
  before(:each) do
    assign(:checkin, stub_model(Checkin,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new checkin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checkins_path, "post" do
      assert_select "input#checkin_title[name=?]", "checkin[title]"
    end
  end
end
