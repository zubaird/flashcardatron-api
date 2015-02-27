class CardsetsController < ApplicationController

  def index
    render json: Cardset.all
  end

  def create
    cardset = Cardset.create(cardset_params)
    render json: Cardset.all
  end

  def destroy
    card = Cardset.find_by(id: params[:id])
    card.destroy
    render json: Cardset.all
  end

  def update
    card = Cardset.find_by(id: params[:id])
    card.update(cardset_params)
    render json: Cardset.all
  end

  private

  def cardset_params
    params.require(:cardset).permit(
    :title
    )
  end


end
