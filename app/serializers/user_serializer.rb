class UserSerializer < ActiveModel::Serializer
  # attributes :id
  attributes :id, :username, :name, :profile_picture, :age, :about_me

  has_many :projects
  has_many :materials
  # has_many :materials, through: :projects
  # has_many :user_materials, through: :materials
  # has_many :project_materials, though: :projects

end
