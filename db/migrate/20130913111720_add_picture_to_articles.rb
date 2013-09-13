class AddPictureToArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.attachment :picture
    end
  end
end
