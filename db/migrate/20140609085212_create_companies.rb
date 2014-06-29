class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :grade
      t.decimal :beCutoff
      t.decimal :xiiCutoff
      t.decimal :xCutoff
      t.integer :backsAllowed
      t.string :branchesAllowed
      t.string :details
      t.decimal :package
      t.timestamp :deadline

      t.timestamps
    end
  end
end

