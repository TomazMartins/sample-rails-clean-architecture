module CoreDomain
  class Transaction < ApplicationRecord
    belongs_to :account, class_name: 'CoreDomain::Account'
  end
end
