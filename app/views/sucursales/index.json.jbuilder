json.array!(@sucursales) do |sucursal|
  json.extract! sucursal, :id, :nombre_sucursal, :total_ventas_dia
  json.url sucursal_url(sucursal, format: :json)
end
