class Project < ApplicationRecord
    validates :name, presence: true, length: {in: 5..30}
    validates :description, presence: true, length: {minimum: 5, maximum: 700}
    validatates :technology, presence: true, length: {in: 5..70 }


    # association
    has_many :projectors
    has_many :employees, through: :projectors
end
