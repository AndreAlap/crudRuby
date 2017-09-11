json.extract! address, :id, :street, :number, :cep, :city, :country, :state, :obs, :created_at, :updated_at
json.url address_url(address, format: :json)
