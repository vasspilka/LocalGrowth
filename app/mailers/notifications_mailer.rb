class NotificationsMailer < ActionMailer::Base
  default :from => CONFIG[:default_from]
  default :to => CONFIG[:default_to]
  def new_message(feedback_message)
    @feedback_message = feedback_message
    mail(:subject => "[Lamiatodo] #{feedback_message.subject}")
  end
end
