class Patient < ActiveRecord::Base


has_many :appointments
has_many :physicians, through: :appointments
belongs_to :ward

  searchable do

    string  :name, :problem

 #     problem.downcase.gsub(/^(an?|the)/, '')

  end

  def self.delete_file
    `rm #{Rails.root}/public/text.csv`
  end
end
