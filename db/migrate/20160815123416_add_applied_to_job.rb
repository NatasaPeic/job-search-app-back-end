class AddAppliedToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :applied, :string
  end
end
