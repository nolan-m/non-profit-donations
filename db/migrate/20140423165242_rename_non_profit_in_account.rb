class RenameNonProfitInAccount < ActiveRecord::Migration
  def change
    rename_column :accounts, :non_profit_id, :company_id
  end
end
