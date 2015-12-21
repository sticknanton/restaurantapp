class OrdersController < ApplicationController

      def bar
        drinkorders = Order.where(done: nil)
        @items = MenuItem.where(category: "Drinks")
        @menuitems = MenuItem.all

        @drinks = []
        drinkorders.each do |drinkorder|
          @items.each do |item|
            if drinkorder.menu_item_id == item.id
            @drinks.push(drinkorder)
            end
          end
        end
      end

      def kitchen
        foodorders = Order.where(done: nil)
        @items = MenuItem.where.not(category: "Drinks").order("created_at desc")
        @menuitems = MenuItem.all

        @eats = []
        foodorders.each do |foodorder|
          @items.each do |item|
            if foodorder.menu_item_id == item.id
            @eats.push(foodorder)
            end
          end
        end
      end

      def new
        @order = Order.new
      end

      def create
        party = Party.find(params[:party_id])
        party.orders.create(order_params)

        redirect_to party_path(party)
      end

      def edit
        order = Order.find(params[:id])
        order.update(order_params)
        redirect_to orders_bar_path
      end

      def update
        order = Order.find(params[:id])
        order.update (order_params)

        redirect_to :back
        
      end

      def show
        @order = Order.params[:id]
      end


      private

      def order_params

      params.require(:order).permit(:party_id, :menu_item_id, :done)

      end
end
