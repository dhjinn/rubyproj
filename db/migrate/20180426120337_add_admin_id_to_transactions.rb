class AddAdminIdToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :admin_id, :integer
  end
end
