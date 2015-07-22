class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.references :user
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :expiration_date
      t.integer :total_impression
      t.decimal :budget
      t.string :status


      t.timestamps
    end
  end
end
