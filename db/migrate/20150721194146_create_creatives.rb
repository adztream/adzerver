class CreateCreatives < ActiveRecord::Migration
  def change
    create_table :creatives do |t|
      t.references :user
      t.references :campaign
      t.string :image
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :expiration_date
      t.integer :impression
      t.string :description
      t.string :code
      t.string :type
      t.string :ad_size
      t.string :amount_type
      t.decimal :amount


      t.timestamps
    end
  end
end
