# == Schema Information
#
# Table name: articles
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  category_id          :integer
#  title                :string(255)
#  body                 :string(255)
#  tags                 :text
#  created_at           :datetime
#  updated_at           :datetime
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_updated_at   :datetime
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
	has_attached_file :picture, 
										:styles => { 
											:medium => "300x300>", 
											:thumb => "60x60#" 
										}, 
										:default_url => "/assets/article.png"




end
