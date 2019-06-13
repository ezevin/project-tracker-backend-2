class ProjectSerializer < ActiveModel::Serializer
  # attributes :id
  attributes :id, :title, :start_date, :due_date, :budget, :finished, :details, :finished_image, :created_at, :updated_at, :materials, :notes, :researches, :to_do_lists, :project_materials

  belongs_to :user
  has_many :researches
  has_many :to_do_lists
  has_many :project_materials
  has_many :materials, through: :project_materials
  has_many :notes

end
