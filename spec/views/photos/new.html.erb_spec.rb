require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :image_uid => "MyString",
      :image_name => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_image_uid[name=?]", "photo[image_uid]"
      assert_select "input#photo_image_name[name=?]", "photo[image_name]"
    end
  end
end
