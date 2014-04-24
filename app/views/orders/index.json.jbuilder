json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :date, :shipping_address, :billing_address, :price
  json.url order_url(order, format: :json)
end
