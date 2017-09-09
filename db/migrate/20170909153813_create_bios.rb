class CreateBios < ActiveRecord::Migration[5.1]
  def change
    create_table :bios do |t|
      t.string :handle
      t.string :display_name
      t.string :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
