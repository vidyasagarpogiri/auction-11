class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :minimum_bid
      t.string :state
      t.datetime :created_datetime
      t.datetime :modified_datetime

      t.timestamps
    end
  end
end
