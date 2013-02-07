class AddMoveCounterToGame < ActiveRecord::Migration
  def change
    add_column :games, :move_counter, :integer, :default => 0
  end
end
