class AddCompanyDetails < ActiveRecord::Migration
  def change
  	add_column :companies, :short, :string
  	add_column :companies, :description, :text
  	add_column :companies, :total_donation, :decimal
  end
end
