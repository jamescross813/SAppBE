class Project < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_many :notes
end
