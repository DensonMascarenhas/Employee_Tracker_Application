class MasterEmployeeRole < ApplicationRecord
    # associations
    has_many :employees
end