json.extract! usuario, :id, :nombre, :email, :rfc, :empresa, :password, :passwordC, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
