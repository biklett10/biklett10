class StaticController < ApplicationController
  before_filter :repel_em
  def repel_em
    # If I want to protect an action, I put its name in the array below.
    super if %w[messages profile].include? self.action_name
  end

  def about
  end

  def check_email
    # Tell enduser to check his e-mail for activation info.
  end

  def messages
  end

  def profile
  end

end

