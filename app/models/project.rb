class Project < ApplicationRecord
  belongs_to :user
  has_many :todos
  has_many :notes
end
