class AddDonorIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :donor_id, :integer
  end
end
