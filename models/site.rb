class Site  
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :description, Text
  property :link, String
  property :created_at, DateTime
end

Site.auto_migrate!
