# == Schema Information
#
# Table name: boots
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  dec        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Boot < ActiveRecord::Base
end
