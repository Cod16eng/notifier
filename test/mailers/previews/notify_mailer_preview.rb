class NotifyMailerPreview < ActionMailer::Preview
  def notify_email_preview
    NotifyMailer.notify_email(Customer.first)
  end
end
