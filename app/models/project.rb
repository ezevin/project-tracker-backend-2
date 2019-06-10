class Project < ApplicationRecord
  belongs_to :user
  has_many :researches
  has_many :to_do_lists
  has_many :notes
  has_many :project_materials
  has_many :materials, through: :project_materials
end
