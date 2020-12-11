class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def show
    @record = Record.find(params[:id])
  end

  def create
    Record.create(record_parameter)
    redirect_to records_path
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path, notice:"削除しました"
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_parameter)
      redirect_to records_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def record_parameter
    params.require(:record).permit(:text, :start_time).merge(user_id: current_user.id, aspiration_id: params[:item_id])
  end

end
