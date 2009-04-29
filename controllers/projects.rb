get '/projects' do
  @projects = Project.all(:order => [:id.desc] )
  haml :'projects/index'
end


get '/projects/create' do
  @project = Project.new
  haml :'projects/create'
end

post '/projects/create' do
  project = Project.new
  project.attributes = params
  project.save
  redirect '/projects'
end

get '/projects/edit/:id' do
  @project = Project.get(params[:id])
  haml :'projects/edit'
end

post '/projects/update' do
  @project = Project.get(params[:id])
  @project.update_attributes(params)
  redirect '/projects'
end

get '/projects/delete/:id' do
  @project = Project.get(params[:id])
  haml :'/projects/confirm'
end

delete '/projects/delete' do
  @project = Project[params[:id]]
  @project.destroy
  redirect '/projects'
end


get '/projects/:id' do
  @project = Project.get(params[:id])
  haml :'projects/view'
end

