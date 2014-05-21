class GroupsController < ApplicationController
  def index
  end

  def show
     @content    = Group.all
    render json: @content
  end

  def create
        @content    = Group.new(name:"A")
        @content.save
  end

  def update

   # Updating one record:
  @content = Group.update(1, :name => 'b')

    end

  def delete
    Group.destroy(1)
  end
end
