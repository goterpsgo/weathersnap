require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        user: nil,
        tz: "Tz",
        latitude: "Latitude",
        longitude: "Longitude",
        temperature: 2,
        condition: "Condition"
      ),
      Photo.create!(
        user: nil,
        tz: "Tz",
        latitude: "Latitude",
        longitude: "Longitude",
        temperature: 2,
        condition: "Condition"
      )
    ])
  end

  it "renders a list of photos" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Tz".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Latitude".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Longitude".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Condition".to_s), count: 2
  end
end
