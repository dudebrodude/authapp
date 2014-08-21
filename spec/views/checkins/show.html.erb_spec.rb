require 'spec_helper'

describe "checkins/show" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
