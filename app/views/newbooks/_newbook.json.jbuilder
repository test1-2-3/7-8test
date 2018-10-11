json.extract! newbook, :id, :Title, :Body, :created_at, :updated_at
json.url newbook_url(newbook, format: :json)
