class AspirationsController < ApplicationController
  def index
    @aspirations = Aspiration.all
  end

  def new
    @aspiration = Aspiration.new
  end
  
end
