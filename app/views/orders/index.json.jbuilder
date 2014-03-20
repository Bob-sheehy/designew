json.array!(@orders) do |order|
  json.extract! order, :id, :name, :address, :email, :paytype
  json.url order_url(order, format: :json)
end
