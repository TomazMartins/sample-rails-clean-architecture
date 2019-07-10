class RenameCoreDomainTransaction < ActiveRecord::Migration[5.2]
  def up
    rename_table :core_domain_transactions, :core_domain_ttransactions
  end
  
  def down
    rename_table :core_domain_ttransactions, :core_domain_ttransactions
  end
end
