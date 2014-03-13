require 'spec_helper'

describe "gmaps/index" do
  before(:each) do
    assign(:gmaps, [
      stub_model(Gmap,
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :description => "Description",
        :title => "Title"
      ),
      stub_model(Gmap,
        :latitude => 1.5,
        :longitude => 1.5,
        :address => "Address",
        :description => "Description",
        :title => "Title"
      )
    ])
  end

  it "renders a list of gmaps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
