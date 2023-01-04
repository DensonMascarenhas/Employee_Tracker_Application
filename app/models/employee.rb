class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # associations
  has_one_attached :image
  has_many :projectors
  has_many :projects, through: :projectors
  belongs_to :division
  belongs_to :master_employee_role



  # validations
  validates :name, presence: true, length: {in: 2..40}
  validates :username, presence: true, length: {in: 5..40}, uniqueness: {case_sensitive: false}
  validates :designation, presence: true, length: {in: 5..40}

end
