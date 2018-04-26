class AddBalanceToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :balance, :decimal, :precision => 8, :scale => 2
    add_column :admins, :club_name, :string
  end
end
