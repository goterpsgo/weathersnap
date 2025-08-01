require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    assign(:photo, Photo.create!(
      user: nil,
      tz: "Tz",
      latitude: "Latitude",
      longitude: "Longitude",
      temperature: 2,
      condition: "Condition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Tz/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Condition/)
  end
end
