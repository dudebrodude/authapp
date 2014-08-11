require 'spec_helper'

describe "clubs/edit" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :index => "MyString",
      :show => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", club_path(@club), "post" do
      assert_select "input#club_index[name=?]", "club[index]"
      assert_select "input#club_show[name=?]", "club[show]"
    end
  end
end
