class Inspiration < ActiveRecord::Base

  validates :name, :presence => true
  validates :image, :presence => true
  validates :text, :presence => true
  validates :url, :presence => true

  attr_accessor :image_width, :image_height
  mount_uploader :image, ImageUploader

  # validate :check_dimensions, :on => :create

  # def check_dimensions
  #   if !image_cache.nil? && (image.width < 500 || image.height < 500)
  #     errors.add :image, "must have width of 800px."
  #   end
  # end
end