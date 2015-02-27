class CardsController < ApplicationController

  def create

    Card.create(card_params)
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
