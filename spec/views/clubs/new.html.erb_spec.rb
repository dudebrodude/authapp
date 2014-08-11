require 'spec_helper'

describe "clubs/new" do
  before(:each) do
    assign(:club, stub_model(Club,
      :index => "MyString",
      :show => "MyString"
    ).as_new_record)
  end

  it "renders new club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clubs_path, "post" do
      assert_select "input#club_index[name=?]", "club[index]"
      assert_select "input#club_show[name=?]", "club[show]"
    end
  end
end
