atom_feed  do |feed|
  feed.title "RTIDatabase feeds"
  feed.updated @posts.maximum(:publish_datetime
)

  @posts.each do |post|
    feed.entry post do |entry|
      entry.title post.name
      entry.content post.content
    end
  end
end
