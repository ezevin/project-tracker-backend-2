class MaterialSerializer < ActiveModel::Serializer
  # attributes :label
  attributes :id, :label, :price, :description, :image_url, :place_purchased, :quantity
  # , :user_materials, :project_materials

  # has_many :user_materials
  # has_many :project_materials
end
