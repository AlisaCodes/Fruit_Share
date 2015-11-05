class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.new(item_params)
    if @item.save
      respond_to do |format|
        format.html { redirect_to user_path }
        format.js
      end
    else
      flash[:alert] = 'Sa-say whaat?'
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :quantity, :description)
  end
end
