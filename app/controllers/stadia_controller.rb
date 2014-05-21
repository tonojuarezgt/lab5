class StadiaController < ApplicationController
  def index
  end

  def show
     @content    = Stadium.all
    render json: @content
  end

  def create
  end

  def update
  end

  def delete
  end
end
