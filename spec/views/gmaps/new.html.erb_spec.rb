require 'spec_helper'

describe "gmaps/new" do
  before(:each) do
    assign(:gmap, stub_model(Gmap,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new gmap form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gmaps_path, "post" do
      assert_select "input#gmap_latitude[name=?]", "gmap[latitude]"
      assert_select "input#gmap_longitude[name=?]", "gmap[longitude]"
      assert_select "input#gmap_address[name=?]", "gmap[address]"
      assert_select "input#gmap_description[name=?]", "gmap[description]"
      assert_select "input#gmap_title[name=?]", "gmap[title]"
    end
  end
end
