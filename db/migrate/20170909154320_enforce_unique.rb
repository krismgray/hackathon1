class EnforceUnique < ActiveRecord::Migration[5.1]
  def change
    add_index :bios, :handle, unique: true
  end
end
