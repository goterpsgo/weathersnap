require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  let(:photo) {
    Photo.create!(
      user: nil,
      tz: "MyString",
      latitude: "MyString",
      longitude: "MyString",
      temperature: 1,
      condition: "MyString"
    )
  }

  before(:each) do
    assign(:photo, photo)
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(photo), "post" do

      assert_select "input[name=?]", "photo[user_id]"

      assert_select "input[name=?]", "photo[tz]"

      assert_select "input[name=?]", "photo[latitude]"

      assert_select "input[name=?]", "photo[longitude]"

      assert_select "input[name=?]", "photo[temperature]"

      assert_select "input[name=?]", "photo[condition]"
    end
  end
end
