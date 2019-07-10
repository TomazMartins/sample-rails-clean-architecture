module CoreDomain
  class Ttransaction < ApplicationRecord
    belongs_to :account, class_name: '::CoreDomain::Account'
    after_create :execute

    private
    def execute
      updated_balance = self.account.balance + amount
      self.account.update(balance: updated_balance)
    end
  end
end
