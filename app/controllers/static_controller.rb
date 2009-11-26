class StaticController < ApplicationController
  before_filter :repel_em
  def repel_em
    super if %w[messages].include? self.action_name
  end

  def about
  end
  def check_email
  end
  def messages
  end

end
