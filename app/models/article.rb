class Article < ApplicationRecord

  attr_accessor :images
  
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy
  has_many :attachments, dependent: :destroy
  
  def images=(files)
    files.each do |file|
      attachments.create(image: file)
    end
  end
  
  def tag_list
    tags.join(", ")
  end
  
  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect { |s| s.strip.downcase }.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end
