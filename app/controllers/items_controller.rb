class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @prototype = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
    @item = Item.find(params[:id])
  end


  private

  def item_params
    params.permit(:name, :price, :delivery, :detail, :image)
  end







end
