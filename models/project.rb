class Project
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :about, Text
  property :link, String
  property :link_title, String
  property :created_at, DateTime
end
Project.auto_upgrade!
