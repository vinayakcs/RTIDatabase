module GlobalConstants
 extend ActiveSupport::Concern

 USER_SEX_MALE="male"
 USER_SEX_FEMALE="female"
 USER_SEX_OTHER="other"
 USER_SEX= [USER_SEX_MALE,USER_SEX_FEMALE,USER_SEX_OTHER]

 USER_NAME_MAX_LENGTH = 30

 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 VALID_MOBILE_REGEX = /[789]\d{9}/

 TRUE_FALSE = [true, false]
end
