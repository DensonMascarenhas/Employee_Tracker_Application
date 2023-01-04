class Division < ApplicationRecord
    # association
    has_many :employees

    # validation
    validates :name, presence: true, length: {in: 2..30}, uniqueness: {case_sensitive: false}

end
