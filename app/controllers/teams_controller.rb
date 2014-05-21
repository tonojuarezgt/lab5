class TeamsController < ApplicationController
  def index
  end

  def show
    @content    = Team.all
    render json: @content
  end

  def create
    @content = Team.new(:name"Guate", :name_c"Sabela", :flag:"http://...", :uniform:"...", :text"...")
    @content.save
  end

  def update
    Team.update(1, :name"", :name_c"", :flag:"", :uniform:"", :text"")
  end

  def delete
    Team.destroy(1)
  end
end
