class PagesController < ApplicationController
  def home
  @title="Home"
  end

  def contact
  @title="Contact"
  end

  def event
  @title="Event"
  end
 
 def about
  @title="About"
  end 
  def help
  @title="Help"
  end
  

end
