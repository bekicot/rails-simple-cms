class CreateBoots < ActiveRecord::Migration
  def change
    create_table :boots do |t|
      t.string :title
      t.string :dec

      t.timestamps
    end
  end
end
