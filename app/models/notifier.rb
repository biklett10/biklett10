class Notifier < ActionMailer::Base
  

  def activation_instructions(sent_at = Time.now)
    subject    'Notifier#activation_instructions'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def activation_confirmation(sent_at = Time.now)
    subject    'Notifier#activation_confirmation'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
