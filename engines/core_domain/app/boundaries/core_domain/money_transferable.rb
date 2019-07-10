module CoreDomain
  module MoneyTransferable
    def transfer(amount:, source_account_id:, destination_account_id:)
      return TransferMoneyInteractor.new.transfer(
        destination_account_id: destination_account_id,
        source_account_id: source_account_id,
        amount: amount
      )
    end
  end
end