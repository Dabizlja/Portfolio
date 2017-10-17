class Project < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :list_angular_items, ->(ang) { where(subtitle: ang)}

  after_initialize :set_default

  def set_default
    self.main_image ||= Placeholder.image_generator(600, 400)
    self.thumb_image ||= Placeholder.image_generator(350, 250)
  end

end
