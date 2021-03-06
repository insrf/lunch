class Item < ApplicationRecord
  enum course_type: [:first_course, :second_course, :drink]

  has_and_belongs_to_many :menus
  has_many :item_orders
  has_many :orders, :through => :item_orders

  validates :name, :course_type, :price, presence: true

  mount_uploader :photo, ImageUploader
  
end
