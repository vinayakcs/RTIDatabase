require 'twitter'
include ActionView::Helpers::TextHelper

desc "tweet todays rti articles"
task :tweet_rtis => :environment do

 twitterClient = Twitter::Client.new 
 twitterClient.consumer_key=''
 twitterClient.consumer_secret=''
 twitterClient.oauth_token=''
 twitterClient.oauth_token_secret=''
 Rails.logger.info "tweeting..."
 @rtis=RtiRequest.get_todays_rtis
 @rtis.each do |rti|
  tweet_name=truncate(rti.title, :length=>50)
  tweet_note=truncate(rti.content, :length=>50)
  tweet_link=rti_requests_url(rti,:host=>"rtidatabase.com")
  twitterClient.update(tweet_name+"\n\n"+tweet_note+"\n\n"+tweet_link)
  Rails.logger.info "tweeted"+tweet_name+"\n\n"+tweet_note+"\n\n"+tweet_link
 end 
# 

end

#https://www.rocketmarketinginc.com/blog/get-never-expiring-facebook-page-access-token/
desc "post todays rtis to facebook"
task :facebook_post_rti => :environment do
 @page_graph = Koala::Facebook::API.new("")
 Rails.logger.info "fbing..."
 @rtis=RtiRequest.get_todays_rtis
 @rtis.each do |rti|
  message=truncate(rti.title,:length=>100)+"\n\n"+truncate(rti.content,:length=>180)
  @page_graph.put_connections('', 'feed', :message => message, :picture => "http://www.rtidatabase.com/images/rtidatabase_logo.jpg", :link => rti_requests_url(rti,:host=>"rtidatabase.com"))
  Rails.logger.info "fb post"+message
 end

end
 
