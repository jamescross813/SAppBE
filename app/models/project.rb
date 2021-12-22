class Project < ApplicationRecord
  belongs_to :user
  has_many :to_dos
  has_many :notes
end
