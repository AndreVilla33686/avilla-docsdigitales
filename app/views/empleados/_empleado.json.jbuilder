json.extract! empleado, :id, :nomEmpleado, :sucursal, :rfc, :puesto, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
