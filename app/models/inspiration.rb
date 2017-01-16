class Inspiration < ActiveRecord::Base

  validates :name, :presence => true
  validates :image, :presence => true
  validates :text, :presence => true

  mount_uploader :image, ImageUploader
end