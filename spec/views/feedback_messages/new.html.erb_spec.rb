require 'spec_helper'

describe "feedback_messages/new" do
  before(:each) do
    assign(:feedback_message, stub_model(FeedbackMessage,
      :name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new feedback_message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedback_messages_path, "post" do
      assert_select "input#feedback_message_name[name=?]", "feedback_message[name]"
      assert_select "input#feedback_message_email[name=?]", "feedback_message[email]"
      assert_select "input#feedback_message_subject[name=?]", "feedback_message[subject]"
      assert_select "textarea#feedback_message_body[name=?]", "feedback_message[body]"
    end
  end
end
