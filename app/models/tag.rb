class Tag < ActiveRecord::Base
  after_initialize :default_values

  def to_param
    "#{name}"
  end

  ## Relations
  has_many :taggings, inverse_of: :tag, dependent: :destroy
  has_many :rti_requests, through: :taggings
  ## End Relations


  ## Validations
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :rti_requests_count, presence: true, numericality: {only_integer: true}
  ## End Validations

  private
  def default_values
    if new_record?
      self.rti_requests_count ||= 0
    end
  end


  rails_admin do
    edit do
      field :name
    end
  end

end
