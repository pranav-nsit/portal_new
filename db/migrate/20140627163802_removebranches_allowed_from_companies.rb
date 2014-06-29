class RemovebranchesAllowedFromCompanies < ActiveRecord::Migration
  def change
  	remove_column :branchesAllowed, :companies
  end
end
