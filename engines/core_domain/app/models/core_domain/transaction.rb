module CoreDomain
  class Transaction < ApplicationRecord
    belongs_to :account, class_name: 'CoreDomain::Account'
    after_create :execute

    private
    def execute
      self.account.balance + amount
      self.account.save
    end
  end
end
