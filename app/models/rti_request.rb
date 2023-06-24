class RtiRequest < ActiveRecord::Base
  include GlobalConstants
  include UrlTokenable
  after_initialize :default_values

  is_impressionable :counter_cache => true, :column_name => :impressions_count, :unique => :session_hash


  ## Relations
  has_many :taggings, inverse_of: :rti_request, dependent: :destroy
  has_many :tags, through: :taggings
  belongs_to :public_authority, inverse_of: :rti_requests, counter_cache: true
  ## End Relations


  ## Validations
  validates :public_authority, presence: true

  validates :url_token, presence: true, uniqueness: {case_sensitive: true}, length: {is: 12}
  validates :title, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 250}

  validates :content, presence: true
  validates :filed_date, presence: true
  validates :source_url, presence: true, length: {maximum: 250}

  validates :publishp, inclusion: {in: GlobalConstants::TRUE_FALSE}
  validates :publish_datetime, presence: true

  validates :fb_publishedp, inclusion: {in: GlobalConstants::TRUE_FALSE}
  validates :twitter_publishedp, inclusion: {in: GlobalConstants::TRUE_FALSE}
  validates :gplus_publishedp, inclusion: {in: GlobalConstants::TRUE_FALSE}

  validates :impressions_count, presence: true, numericality: {only_integer: true}
  ## End Validations


  ## Callbacks
  ## End Callbacks


  ## Scopes
  scope :published_requests, -> {
    where(publishp: true)
      .where("publish_datetime <= ?", Time.now)
  }
  scope :top_viewed, -> {
    order(impressions_count: :desc, id: :desc)
      .published_requests
      .includes(:tags)
  }

  scope :trending, -> {
    where("updated_at > ?", Time.now - 30.days)
      .top_viewed
  }

  scope :recent, -> {
    order(filed_date: :desc, id: :desc)
      .published_requests
      .includes(:tags)
  }
 
  scope :get_todays_rtis, -> {where("DATE(publish_datetime)=DATE(?) and ",Time.now.utc)}
  ## End Scopes


  private
  def default_values
    if new_record?
      self.filed_date = Time.now
      self.publishp = false
      self.publish_datetime = Time.now
      self.fb_publishedp = false
      self.twitter_publishedp = false
      self.gplus_publishedp = false
      self.impressions_count ||= 0
    end
  end

  rails_admin do
    edit do
      field :title
      field :content, :ck_editor
      field :filed_date
      field :source_url
      field :public_authority
      field :publishp
      field :publish_datetime
      field :fb_publishedp
      field :twitter_publishedp
      field :gplus_publishedp
      field :tags
    end
  end

end
