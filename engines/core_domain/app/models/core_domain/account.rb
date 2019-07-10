module CoreDomain
  class Account < ApplicationRecord
    has_many :ttransactions, class_name: '::CoreDomain::Ttransaction'
  end
end
