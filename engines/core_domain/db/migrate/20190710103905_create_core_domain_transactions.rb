class CreateCoreDomainTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :core_domain_transactions do |t|
      t.decimal :total
      t.belongs_to :account

      t.timestamps
    end
  end
end
