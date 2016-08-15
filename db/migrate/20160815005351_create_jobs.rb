class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :position_name
      t.string :company_url
      t.string :requirements
      t.integer :salary
      t.string :application_url
      t.string :notes

      t.timestamps null: false
    end
  end
end
