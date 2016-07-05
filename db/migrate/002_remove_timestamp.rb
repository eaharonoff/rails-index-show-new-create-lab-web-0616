class RemoveTimestamp < ActiveRecord::Migration
  def change
    remove_column :coupons, :created_at
    remove_column :coupons, :updated_at
  end
end