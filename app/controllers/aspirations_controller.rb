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

  def destroy
    @aspiration = Aspiration.find(params[:id])
    @aspiration.destroy
    redirect_to aspirations_path, notice:"削除しました"
  end

  def edit
    @aspiration = Aspiration.find(params[:id])
  end

  def update
    @aspiration = Aspiration.find(params[:id])
    if @aspiration.update(aspiration_parameter)
      redirect_to aspirations_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private
  def aspiration_params
    params.require(:aspiration).permit(:title, :detail, :deadline, :category,)
  end
end
