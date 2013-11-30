require 'spec_helper'

describe "feedback_messages/index" do
  before(:each) do
    assign(:feedback_messages, [
      stub_model(FeedbackMessage,
        :name => "Name",
        :email => "Email",
        :subject => "Subject",
        :body => "MyText"
      ),
      stub_model(FeedbackMessage,
        :name => "Name",
        :email => "Email",
        :subject => "Subject",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of feedback_messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
