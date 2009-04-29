get '/portfolio' do
  @sites = Site.all(:order => [:id.desc] )
  haml :'portfolio/index'
end


get '/portfolio/create' do
  @site = Site.new
  haml :'portfolio/create'
end

post '/portfolio/create' do
  site = Site.new
  site.attributes = params
  site.save
  redirect '/portfolio'
end

get '/portfolio/edit/:id' do
  @site = Site.get(params[:id])
  haml :'portfolio/edit'
end

post '/portfolio/update' do
  @site = Site.get(params[:id])
  @site.update_attributes(params)
  redirect '/portfolio'
end

get '/portfolio/delete/:id' do
  @site = Site.get(params[:id])
  haml :'/portfolio/confirm'
end

delete '/portfolio/delete' do
  @site = Site[params[:id]]
  @site.destroy
  redirect '/portfolio'
end


get '/portfolio/:id' do
  @site = Site.get(params[:id])
  haml :'portfolio/view'
end

