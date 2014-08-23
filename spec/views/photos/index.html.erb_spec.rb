require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :image_uid => "Image Uid",
        :image_name => "Image Name"
      ),
      stub_model(Photo,
        :image_uid => "Image Uid",
        :image_name => "Image Name"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Image Name".to_s, :count => 2
  end
end
