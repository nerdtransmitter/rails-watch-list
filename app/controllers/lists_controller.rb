class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(restaurant_params)
    @list.save
    redirect_to list_path(@list)
  end

  def edit
  end

  def update
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:Lists).permit(:title, :overview, :rating, :poster_url)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
