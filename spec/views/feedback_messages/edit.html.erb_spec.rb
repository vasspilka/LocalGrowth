require 'spec_helper'

describe "feedback_messages/edit" do
  before(:each) do
    @feedback_message = assign(:feedback_message, stub_model(FeedbackMessage,
      :name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit feedback_message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedback_message_path(@feedback_message), "post" do
      assert_select "input#feedback_message_name[name=?]", "feedback_message[name]"
      assert_select "input#feedback_message_email[name=?]", "feedback_message[email]"
      assert_select "input#feedback_message_subject[name=?]", "feedback_message[subject]"
      assert_select "textarea#feedback_message_body[name=?]", "feedback_message[body]"
    end
  end
end
