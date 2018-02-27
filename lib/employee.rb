class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true},
                          inclusion: {in: 40..200}
  validates :store_id, numericality: {only_integer: true, presence: true}

  belongs_to :store


end


