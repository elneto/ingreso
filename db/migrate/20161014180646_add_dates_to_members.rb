class AddDatesToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :sec_in_date_aprobado, :datetime
    add_column :members, :sg_in_date_aprobado, :datetime
    add_column :members, :utic_in_date_aprobado, :datetime
    add_column :members, :cridd_in_date_aprobado, :datetime
  end
end
