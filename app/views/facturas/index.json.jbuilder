json.array!(@facturas) do |factura|
  json.extract! factura, :id, :observacion, :valor_articulo, :sucursal_id
  json.url factura_url(factura, format: :json)
end
