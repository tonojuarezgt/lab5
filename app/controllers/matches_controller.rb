class MatchesController < ApplicationController
  def index
  end

  def show
     @content    = Match.all
    render json: @content
  end

  def create
            @content    = Match.new(date:"2014/06/13", phase:"grupos", state:"No jugado")
        @content.save
  end

  def update
  @content = Match.update(1, :date => '2014/07/13')

  end

  def delete
        Match.destroy(1)
  end
end
