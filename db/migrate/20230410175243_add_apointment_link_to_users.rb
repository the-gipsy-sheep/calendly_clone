class AddApointmentLinkToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :apointment_link, :string
    add_index :users, :apointment_link, unique: true
  end
end
