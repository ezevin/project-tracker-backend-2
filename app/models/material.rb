class Material < ApplicationRecord

  has_many :user_materials
  has_many :users, through: :user_materials

  has_many :project_materials
  has_many :projects, through: :project_materials

end
