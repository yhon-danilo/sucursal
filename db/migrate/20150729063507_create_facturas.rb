class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :observacion
      t.integer :valor_articulo
      t.references :sucursal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
