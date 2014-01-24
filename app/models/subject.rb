class Subject < ActiveRecord::Base
  # Schema:
  #
  # title: string (required)
  # description: text (required)
  # image_url: string (required)
  # subway_map: string
  #

  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
end
