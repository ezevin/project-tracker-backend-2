class User < ApplicationRecord
  has_many :projects
  has_many :user_materials
  has_many :materials, through: :user_materials
  has_many :tools

  has_secure_password
end
