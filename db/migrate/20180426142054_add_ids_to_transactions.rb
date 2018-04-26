class AddIdsToTransactions < ActiveRecord::Migration[5.1]
  def change
  	add_column :transactions, :admin_id, :integer
  	add_column :transactions, :user_id, :integer
  end
end
