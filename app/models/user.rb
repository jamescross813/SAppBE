class User < ApplicationRecord
    has_many :projects
    # has_many :notes, through: :projects
end
