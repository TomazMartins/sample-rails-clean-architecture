module CoreDomain
  module EntityObservable
    def all_accounts
      return CoreDomain::Account.all
    end

    def all_transactions
      return CoreDomain::Ttransaction.all
    end

    def transaction_by(transaction_id:)
      return CoreDomain::Ttransaction.find(transaction_id)
    end

    def account_by(account_id:)
      return CoreDomain::Account.find(account_id)
    end
  end
end