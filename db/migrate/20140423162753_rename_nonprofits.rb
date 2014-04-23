class RenameNonprofits < ActiveRecord::Migration
  def change
    rename_table :non_profits, :company
  end
end
