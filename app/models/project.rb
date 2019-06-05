class Project < ApplicationRecord
  belongs_to :user
  has_many :project_materials
  has_many :materials, through: :project_materials
end
