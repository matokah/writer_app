module PostsHelper
	def post_periods
		[
			['Dec-2014', 'Jan-2014'],
			['Jan-2015', 'Jan-2015'],
			['Feb-2015', 'Feb-2015'],
			['Mar-2015', 'Mar-2015']
		]
	end	

  def just_your_clients(current_user)
    clients = Client.find_clients_for_current_user(current_user) 
    clients.map do |client| #look up map function 
      [client.name , client.id.to_i] #returns an array with just attributes you want
    end 
  end

end
