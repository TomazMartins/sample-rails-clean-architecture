class AddAmountToCoreDomainTransaction < ActiveRecord::Migration[5.2]
  def up
    remove_column :core_domain_transactions, :total, :decimal
    add_column :core_domain_transactions, :amount, :decimal
  end

  def down
    remove_column :core_domain_transactions, :amount, :decimal
    add_column :core_domain_transactions, :total, :decimal
  end
end
