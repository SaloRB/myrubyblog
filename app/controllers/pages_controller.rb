class PagesController < ApplicationController
  def about
  end

  def contact
  	@message = Message.new
  end

  def resources
  end
end
