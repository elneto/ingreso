class AddSectionsToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :nombre_solicitante, :string
    add_column :members, :email_solicitante, :string
    add_column :members, :numero_credencial, :string
    add_column :members, :sec_in_numero_pase, :string
    add_column :members, :sec_in_tiene_llaves, :boolean
    add_column :members, :sec_in_numero_llaves, :integer
    add_column :members, :sec_in_fotografia, :boolean
    add_column :members, :sec_in_comentarios, :text
    add_column :members, :sec_in_aprobado, :boolean
    add_column :members, :sg_in_notificacion_recepcion, :boolean
    add_column :members, :sg_in_credencial_edificio, :string
    add_column :members, :sg_in_tarjeta_estacionamiento, :string
    add_column :members, :sg_in_aprobado, :boolean
    add_column :members, :utic_in_inventario_pc, :string
    add_column :members, :utic_in_extension, :string
    add_column :members, :utic_in_ld, :boolean
    add_column :members, :utic_in_usuario_novell, :string
    add_column :members, :utic_in_email_cepal, :string
    add_column :members, :utic_in_aprobado, :boolean
    add_column :members, :cridd_in_servicios, :boolean
    add_column :members, :cridd_in_aprobado, :boolean
  end
end
