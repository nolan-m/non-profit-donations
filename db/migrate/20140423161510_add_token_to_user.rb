class AddTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :token, :string

    create_table :non_profits do |t|
      t.string :name
    end

    create_table :accounts do |t|
      t.integer :user_id
      t.integer :non_profit_id
      t.decimal :donation_amt, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
