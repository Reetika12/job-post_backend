class Job < ApplicationRecord
    validates_presence_of :company, :position, :description
    belongs_to :users
end