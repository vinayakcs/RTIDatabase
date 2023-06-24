class PublicAuthority < ActiveRecord::Base
  after_initialize :default_values

  def to_param
    "#{name}"
  end

  ## Relations
  has_many :rti_requests, inverse_of: :public_authority
  belongs_to :government, inverse_of: :public_authorities, counter_cache: true
  ## End Relations


  ## Validations
  validates :government, presence: true
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
      field :government
      field :name
    end
  end
end
