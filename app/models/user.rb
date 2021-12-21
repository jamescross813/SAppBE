class User < ApplicationRecord
    has_many :projects
    has_many :to_dos, through :projects
    has_many :notes, through: :projects
end
