class PartiesController < ApplicationController

  def index
    @parties = Party.where(closed: nil)
    @party = Party.new
    @servers = Server.all
  end

  def checks
    @parties = Party.where(closed: nil)
  end

  def create
    party = Party.create(party_params)
    redirect_to parties_path
  end

  def edit
    @party = Party.find(params[:id])
  end

  def show
    @party = Party.find(params[:id])
    @orders = @party.orders
    @order = @party.orders.new

  end
  def update
    party = Party.find(params[:id])
    party.update (party_params)
    redirect_to parties_checks_path
  end

  private

  def party_params

    params.require(:party).permit(:guest_num, :table_num, :server_id, :closed)

  end

end
