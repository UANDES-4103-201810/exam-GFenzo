json.extract! deliveryinfo, :id, :name, :address1, :address2, :phone, :order_id, :created_at, :updated_at
json.url deliveryinfo_url(deliveryinfo, format: :json)
