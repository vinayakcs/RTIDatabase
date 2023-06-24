class Government < ActiveRecord::Base
  after_initialize :default_values

  ## Relations
  has_many :public_authorities, inverse_of: :government
  ## End Relations

  ## Validations
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :public_authorities_count, presence: true, numericality: {only_integer: true}
  ## End Validations


  private
  def default_values
    if new_record?
      self.public_authorities_count ||= 0
    end
  end


  rails_admin do
    edit do
      field :name
    end
  end


end
