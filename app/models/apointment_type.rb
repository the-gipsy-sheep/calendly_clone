class ApointmentType < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many :apointments
end
