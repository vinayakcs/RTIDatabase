xml.instruct! :xml, :version => "1.0"
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  for rtis in @rti_requests do
    xml.url do
      xml.loc rti_requests_url(rtis,:host=>"rtidatabase.com")
      xml.lastmod rtis.publish_datetime.to_date
      xml.changefreq "daily"
      xml.priority "0.5"
    end
  end
end
