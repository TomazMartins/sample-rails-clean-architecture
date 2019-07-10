class TransferencesController < ApplicationController
  include CoreDomain::MoneyTransferable

  protect_from_forgery with: :null_session


  # POST /transferences
  # Params: JSON
  # {
  #   destination_account_id: <integer>,
  #   source_account_id: <integer>,
  #   amount: <decimal>
  # }
  def create
    destination_account_id = params[:destination_account_id]
    source_account_id = params[:source_account_id]
    amount = params[:amount]

    is_transferred = transfer(destination_account_id: destination_account_id,
      source_account_id: source_account_id,
      amount: amount
    )

    render json: { success: is_transferred }
  end
end 