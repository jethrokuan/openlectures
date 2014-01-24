class Topic < ActiveRecord::Base
  #Schema :
  #
  #title: string (required)
  #subject_id: integer (required)
  #position: integer (required)
  #

  belongs_to :subject

  #Model Validations
  validates :title, presence: true
  validates :subject_id, presence: true
  validates :position, presence: true
end
