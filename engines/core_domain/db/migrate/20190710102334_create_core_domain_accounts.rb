class CreateCoreDomainAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :core_domain_accounts do |t|
      t.decimal :balance

      t.timestamps
    end
  end
end
