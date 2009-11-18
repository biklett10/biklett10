class StaticController < ApplicationController
  before_filter :repel_em, :except => :about
  def about
  end
  def check_email
  end
  def messages
  end

end
