module UrlTokenable
  extend ActiveSupport::Concern

  def to_param  # Overridden
    get_url_from_params(url_token, title)
    # url_token
  end

  # Get random url
  def generate_hex_token(size)
    SecureRandom.hex(size)
  end

  # Keep trying until a uuid is found; size is 6, generated token size will be of double the size so 12
  def generate_unique_random_token(model, field = "url_token", length)
    begin
     rand_token = generate_hex_token(length)
    end while model.exists?(field.to_sym => rand_token)
    rand_token
  end

  included do
    before_validation :set_url_token, on: :create

    def set_url_token
      self.url_token = generate_unique_random_token(self.class.name.classify.constantize, "url_token", 6)
    end
  end

  def get_url_from_params(url_token, title)
    [url_token,title.parameterize.truncate(200,separator:'')].join("-")
  end

end
