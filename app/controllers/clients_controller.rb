class ClientsController < ApplicationController 
  def index
  	@clients = Client.all
  end

  def show
  	@client = get_client
  end

  def new
  	@client = Client.new
  end

  def edit
  	@client = get_client
  end

def create
  	@client = Client.new(client_params)
    @client.user_id = current_user.id 
  	if @client.save
  		redirect_to client_path(@client)
  	else
  		render :new
  	end
  end

  def update
    @client = get_client
    if @client.update(client_params)
      redirect_to clients_path(@client)
  else 
    render :edit
  end
  end

  def destroy
  @client = get_client
  @client.destroy
  redirect_to clients_path
  end

private

	def client_params
		params.require(:client).permit(:name,:user_id)
	end

	def get_client
		@client = Client.find(params[:id])
	end
end






  