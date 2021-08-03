class ItemsController < ApplicationController

  before_action :search_item, only: [:index, :search]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
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

  def search
    @results = @p.result.includes(:category, :delivery_month, :delivery_day, :delivery_time)
  end


  private

  def item_params
    params.require(:item).permit(:category_id, :name, :price, :delivery_month_id, :delivery_day_id, :delivery_time_id, :detail, :image)
  end

  def search_item
    @p = Item.ransack(params[:q])
  end



end
