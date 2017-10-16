class Project < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :list_angular_items, ->(ang) { where(subtitle: ang)}

  after_initialize :set_default

  def set_default
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end

end
