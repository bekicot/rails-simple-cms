# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  category_id :integer
#  title       :string(255)
#  body        :string(255)
#  tags        :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Article < ActiveRecord::Base

	belongs_to :user
	belongs_to :category

	# validations
	validates :title, 		presence: true
	validates :body,      presence: true 
	validates :user,      presence: true 
	validates :category,  presence: true 
	accepts_nested_attributes_for :category


	# Test Serialize data 

	serialize :tags, Array



end
