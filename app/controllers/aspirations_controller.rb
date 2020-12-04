class AspirationsController < ApplicationController
  def index
    @aspirations = Aspiration.all
  end

  def new
    @aspiration = Aspiration.new
  end
  
  def create
    Aspiration.create(aspiration_params)
  end

  def show
    @aspiration = Aspiration.find(params[:id])
  end

  private
  def aspiration_params
    params.require(:aspiration).permit(:title, :detail, :deadline, :category,)
  end
end
