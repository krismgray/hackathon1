class MovingHandle < ActiveRecord::Migration[5.1]
  def change
    remove_column :bios, :handle
  end
end
