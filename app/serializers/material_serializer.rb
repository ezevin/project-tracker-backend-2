class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :label, :price, :description, :image_url, :place_purchased

  has_many :user_materials
  has_many :project_materials
end
