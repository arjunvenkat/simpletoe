class AddStatusToBox < ActiveRecord::Migration
  def change
    add_column :boxes, :status, :string, :default => 'nil'
  end
end
