module CoreDomain
  class TransferMoneyInteractor
    def transfer(amount: source_account_id:, destination_account_id:)
      begin
        destination_account = Account.find(destination_account_id)
        source_account = Account.find(source_account_id)
        is_transferred = false

        if source_account.balance >= amount
          destination_account.transactions.create!(amount: amount)
          source_account.transactions.create!(amount: amount)

          is_transferred = true
        end

        return is_transferred
      rescue StandardError => error
        # YOU CAN'T HANDLE THE TRUTH!!
      end
    end
  end
end