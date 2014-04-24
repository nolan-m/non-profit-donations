class RenameAccounts < ActiveRecord::Migration
  def change
    rename_table :accounts, :donations
  end
end
