require 'builder'
 
desc "generate rti sitemap"
task :rti_sitemap => :environment do
 
  STATIC_URLS = ['/rti_requests/recent',
                 '/rti_requests/top_viewed',
                 '/feedbacks/new']
 
      @bad_pages = []  
      @pages_to_visit = []
      @url = "http://www.rtidatabase.com"
      @url_domain = url[/([a-z0-9-]+)\.([a-z.]+)/i]
      
      @pages_to_visit  = STATIC_URLS
      @rti_requests=RtiRequest.published_requests
      @rti_requests.each do |rtis|
       @pages_to_visit += rti_requests_url(rtis)
      end 

      xml_str = ""
      xml = Builder::XmlMarkup.new(:target => xml_str, :indent => 2)
 
      xml.instruct!
      xml.urlset(:xmlns=>'http://www.sitemaps.org/schemas/sitemap/0.9') {
        @pages_to_visit.each do |url|
          unless @url == url
            xml.url {
              xml.loc(@url + url)
              xml.lastmod(Time.now.utc.strftime("%Y-%m-%dT%H:%M:%S+00:00"))
             }
          end
        end
      }
 

      File.open("#{ Rails.root }/public/sitemap.xml", "w+") do |f|
        f.write(xml_str)
      end



      sitemap_uri = @url + '/public/sitemap.xml'
      escaped_sitemap_uri = CGI.escape(sitemap_uri)
      Rails.logger.info "Notifying Google"
      res = Net::HTTP.get_response('www.google.com', '/webmasters/tools/ping?sitemap=' + escaped_sitemap_uri)
      Rails.logger.info res.class
      Rails.logger.info "Notifying Yahoo"
      res = Net::HTTP.get_response('search.yahooapis.com', '/SiteExplorerService/V1/updateNotification?appid=SitemapWriter&url=' + escaped_sitemap_uri)
      Rails.logger.info res.class
      Rails.logger.info "Notifying Bing"
      res = Net::HTTP.get_response('www.bing.com', '/webmaster/ping.aspx?siteMap=' + escaped_sitemap_uri)
      Rails.logger.info res.class
      Rails.logger.info "Notifying Ask"
      res = Net::HTTP.get_response('submissions.ask.com', '/ping?sitemap=' + escaped_sitemap_uri)
      Rails.logger.info res.class
end
