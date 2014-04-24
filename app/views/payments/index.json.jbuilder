json.array!(@payments) do |payment|
  json.extract! payment, :id, :payment_method
  json.url payment_url(payment, format: :json)
end
