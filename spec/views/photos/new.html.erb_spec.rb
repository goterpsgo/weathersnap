require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      user: nil,
      tz: "MyString",
      latitude: "MyString",
      longitude: "MyString",
      temperature: 1,
      condition: "MyString"
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input[name=?]", "photo[user_id]"

      assert_select "input[name=?]", "photo[tz]"

      assert_select "input[name=?]", "photo[latitude]"

      assert_select "input[name=?]", "photo[longitude]"

      assert_select "input[name=?]", "photo[temperature]"

      assert_select "input[name=?]", "photo[condition]"
    end
  end
end
