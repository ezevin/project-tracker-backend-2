class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :password_digest, :profile_picture, :age, :about_me

  has_many :projects
  has_many :materials
  has_many :materials, through: :projects

end
