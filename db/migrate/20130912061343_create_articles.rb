class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.references  :user 
    	t.references  :category
    	t.string      :title 
    	t.string      :body 
    	t.text        :tags
      t.timestamps
    end
  end
end
