class RunnersController < ApplicationController
  before_filter :require_user
  def index
    @runners = Runner.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @runners }
    end
  end

end
