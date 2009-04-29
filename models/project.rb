class Project
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :about, Text
  property :link, String
  property :created_at, DateTime
end
Project.auto_migrate!
