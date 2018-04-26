class RemoveIdFromTransactions < ActiveRecord::Migration[5.1]
  def change
  	remove_column :transactions, :admin_id
  	remove_column :transactions, :user_id
  end
end
