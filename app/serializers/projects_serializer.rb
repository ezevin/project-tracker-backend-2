class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :due_date, :budget, :finished, :details, :finished_image, :created_at, :materials

  belongs_to :user
  has_many :researches
  has_many :to_do_lists
  has_many :materials
  has_many :notes


end
