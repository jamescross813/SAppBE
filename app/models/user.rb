class User < ApplicationRecord
    has_many :projects
    # has_many :notes, through: :projects
    # has_many :todos, through: :projects
end
