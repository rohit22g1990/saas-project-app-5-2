class ChangeKeyToTokenForPayment < ActiveRecord::Migration[5.2]
  def change
    rename_column :payments, :key, :token
  end
end
