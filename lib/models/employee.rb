class Employee < ActiveRecord::Base
  has_many :tasks
  has_many :projects, through: :tasks
  belongs_to :specialty
end
