class ProjectSerializer < ActiveModel::Serializer
  # attributes :id
  attributes :id, :title, :start_date, :due_date, :budget, :finished, :details, :finished_image, :created_at, :updated_at, :notes, :researches, :to_do_lists, :inventories, :tools

  belongs_to :user
  has_many :researches
  has_many :to_do_lists
  has_many :inventories
  has_many :tools
  # has_many :materials, through: :project_materials
  has_many :notes

end
