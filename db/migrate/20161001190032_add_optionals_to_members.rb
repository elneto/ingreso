class AddOptionalsToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :oficina, :boolean
    add_column :members, :computo, :boolean
    add_column :members, :telefono, :boolean
    add_column :members, :llamadas_ld, :boolean
    add_column :members, :usuario_novell, :boolean
    add_column :members, :lotus_notes, :boolean
    add_column :members, :acceso_umoja, :boolean
    add_column :members, :lista_correo, :boolean
    add_column :members, :acceso_shared, :boolean
    add_column :members, :numero_oficina, :string
    add_column :members, :extension, :string
    add_column :members, :roles_umoja, :text
    add_column :members, :programas, :text
  end
end
