require 'spec_helper'

describe "checkins/index" do
  before(:each) do
    assign(:checkins, [
      stub_model(Checkin,
        :title => "Title"
      ),
      stub_model(Checkin,
        :title => "Title"
      )
    ])
  end

  it "renders a list of checkins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
