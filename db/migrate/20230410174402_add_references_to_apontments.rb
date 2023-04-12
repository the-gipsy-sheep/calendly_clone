class AddReferencesToApontments < ActiveRecord::Migration[7.0]
  def change
    add_column :apointments, :apointment_type_id, :integer
  end
end
