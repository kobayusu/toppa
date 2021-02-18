class AspirationsController < ApplicationController

  def index
    @aspirations = Aspiration.includes(:user)
  end

  def new
    @aspiration = Aspiration.new
  end
  
  
  def create
    Aspiration.create(aspiration_params)
  end

  def edit
    @aspiration = Aspiration.find(params[:id])
  end

  def update
    aspiration = Aspiration.find(params[:id])
    aspiration.update(aspiration_params)
    #   @aspiration = Aspiration.find(params[:id])
    #   if @aspiration.update(aspiration_parameter)
    #     redirect_to aspirations_path, notice: "編集しました"
    #   else
    #     render 'edit'
    #   end
  end
  
  def show
    @aspiration = Aspiration.find(params[:id])
    @record = Record.includes(:aspiration)
  end

  def destroy
    @aspiration = Aspiration.find(params[:id])
    @aspiration.destroy
    redirect_to aspirations_path
  end
  
  private
  def aspiration_params
    params.require(:aspiration).permit(:title, :detail, :start_time, :category).merge(user_id: current_user.id)
  end

end
