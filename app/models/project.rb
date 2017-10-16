class Project < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :list_angular_items, ->(ang) { where(subtitle: ang)}
end
