class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def new
  end

  def create
  end
end