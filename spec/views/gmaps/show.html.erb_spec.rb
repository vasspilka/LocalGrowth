require 'spec_helper'

describe "gmaps/show" do
  before(:each) do
    @gmap = assign(:gmap, stub_model(Gmap,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "Address",
      :description => "Description",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Address/)
    rendered.should match(/Description/)
    rendered.should match(/Title/)
  end
end
