class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :nombre
      t.string :apellido
      t.integer :index
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :tipo_contrato

      t.timestamps
    end
  end
end
