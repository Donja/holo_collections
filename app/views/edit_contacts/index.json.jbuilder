json.array!(@edit_contacts) do |edit_contact|
  json.extract! edit_contact, :id, :name, :contact_num, :email
  json.url edit_contact_url(edit_contact, format: :json)
end
