class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :title
  
  has_many :materials
end
