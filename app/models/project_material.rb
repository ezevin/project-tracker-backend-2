class ProjectMaterial < ApplicationRecord
  belongs_to :material
  belongs_to :project
end
