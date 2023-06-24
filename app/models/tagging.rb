class Tagging < ActiveRecord::Base

  ## Relations
  belongs_to :tag, inverse_of: :taggings, counter_cache: :rti_requests_count
  belongs_to :rti_request, inverse_of: :taggings
  ## End Relations

  ## Validations
  validates :tag, presence: true
  validates :rti_request, presence: true
  validates :tag_id, numericality: {only_integer: true}
  validates :rti_request_id, numericality: {only_integer: true}, uniqueness: {scope: :tag_id}
  ## End Validations

end
