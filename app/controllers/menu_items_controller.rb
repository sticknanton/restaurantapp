class MenuItemsController < ApplicationController

    before_action :authenticate!

    def index
      redirect_to log_in_path
    end

    def create
      menuitem = MenuItem.create(menu_item_params)
      redirect_to profile_path
    end

    def edit
      @menuitem = MenuItem.find(params[:id])
    end

    def destroy
      MenuItem.destroy(params[:id])
      redirect_to profile_path
    end

    def show
      @menuitem = MenuItem.params[:id]
    end

    private

    def menu_item_params

      parameters = params.require(:menu_item).permit(:category, :price, :name)

    end
end
