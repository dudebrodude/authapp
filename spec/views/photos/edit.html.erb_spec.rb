require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :image_uid => "MyString",
      :image_name => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do
      assert_select "input#photo_image_uid[name=?]", "photo[image_uid]"
      assert_select "input#photo_image_name[name=?]", "photo[image_name]"
    end
  end
end
