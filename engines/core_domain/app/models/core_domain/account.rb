module CoreDomain
  class Account < ApplicationRecord
    has_many :transaction, class_name: 'CoreDomain::Transaction'
  end
end
