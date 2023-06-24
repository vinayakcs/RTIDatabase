class Feedback < ActiveRecord::Base
  # after_initialize :default_values

  ## Validations
  validates :name, length: {maximum: GlobalConstants::USER_NAME_MAX_LENGTH}, allow_nil: true
  validates :email, format: {with: GlobalConstants::VALID_EMAIL_REGEX}, allow_blank: true
  validates :mobile, format: {with: GlobalConstants::VALID_MOBILE_REGEX}, allow_blank: true
  validates :content, presence: true, length: {maximum: 500}
  ## End Validations

  # private
  # def default_values
  #   if new_record?
  #     self.name ||= "Anonymous"
  #     self.mobile ||= 9999999999
  #     self.email ||= "anonymous@anonymous.com"
  #   end
  # end
end
