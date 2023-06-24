every 1.day, :at => '4:30 am' do
  rake "rti_sitemap"
end

every 1.day, :at => '9:30 pm' do
  rake "tweet_rtis"
  rake "facebook_post_rti"
end
