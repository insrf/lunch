class Item < ApplicationRecord
  has_and_belongs_to_many :menus

  validates :name, :course_type, :price, presence: true

  mount_uploader :photo, ImageUploader

  def start_time
    self.created_at
  end
end
