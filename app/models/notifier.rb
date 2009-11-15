class Notifier < ActionMailer::Base

  # Syntax below derived from 
  # http://github.com/matthooks/authlogic-activation-tutorial

  def activation_instructions(user,host_with_port)
    default_url_options[:host] = host_with_port
    subject       "Activation Instructions"
    from          "Binary Logic Notifier <noreply@binarylogic.com>"
    recipients    user.email
    sent_on       Time.now
    body          :account_activation_url => register_url(user.perishable_token)
  end

  def activation_confirmation(user,host_with_port)
    default_url_options[:host] = host_with_port
    subject       "Activation Complete"
    from          "Binary Logic Notifier <noreply@binarylogic.com>"
    recipients    user.email
    sent_on       Time.now
    body          :root_url => root_url
  end

end
