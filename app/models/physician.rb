class Physician < ActiveRecord::Base

extend FriendlyId

friendly_id :name, use: :slugged
has_many :appointments
has_many :patients, through: :appointments
end
