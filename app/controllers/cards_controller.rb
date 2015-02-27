class CardsController < ApplicationController

  def create
    Card.create(card_params)
    render json: Cardset.all
  end

  def destroy
    card = Card.find_by(id: params[:id])
    card.destroy
    render json: Cardset.all
  end

  def update
    card = Card.find_by(id: params[:id])
    card.update(card_params)
    render json: Cardset.all
  end

  private

  def card_params
    params.require(:card).permit(
    :question,
    :answer,
    :cardset_id
    )
  end


end
