class AddRushmoreFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :estimated_retirement_savings, :integer
    add_column :users, :stocks_or_mutual_funds_percent, :integer
  end
end
