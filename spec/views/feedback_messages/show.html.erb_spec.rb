require 'spec_helper'

describe "feedback_messages/show" do
  before(:each) do
    @feedback_message = assign(:feedback_message, stub_model(FeedbackMessage,
      :name => "Name",
      :email => "Email",
      :subject => "Subject",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Subject/)
    rendered.should match(/MyText/)
  end
end
