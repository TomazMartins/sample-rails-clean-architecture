class AccountsController < ApplicationController
  include CoreDomain::EntityObservable

  protect_from_forgery with: :null_session


  # GET /accounts
  def index
    accounts = all_accounts
    is_succeed = accounts.present?

    render json: { success: is_succeed, accounts: accounts }
  end

  # GET /account/:id
  def show
    account_id = params[:id]
    account = account_by(account_id: account_id)

    is_succeed = account.present?
    render json: { success: is_succeed, account: account }
  end
end