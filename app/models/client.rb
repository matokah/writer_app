# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Client < ActiveRecord::Base
	has_many :posts
	belongs_to :user

	def self.find_clients_for_current_user(current_user) #pass in current_user
    clients = Client.where(user_id:current_user.id) #find all clients connected to this current_user
    
  end
end
