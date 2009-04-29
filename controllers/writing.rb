get '/writing' do
  @posts = Post.all(:order => [:id.desc] )
  haml :'writing/index'
end


get '/writing/create' do
  @post = Post.new
  haml :'writing/create'
end

post '/writing/create' do
  post = Post.new
  post.attributes = params
  post.save
  redirect '/writing'
end

get '/writing/edit/:id' do
  @post = Post.get(params[:id])
  haml :'writing/edit'
end

post '/writing/update' do
  @post = Post.get(params[:id])
  @post.update_attributes(params)
  redirect '/writing'
end

get '/writing/delete/:id' do
  @post = Post.get(params[:id])
  haml :'/writing/confirm'
end

delete '/writing/delete' do
  @post = Post[params[:id]]
  @post.destroy
  redirect '/writing'
end


get '/writing/:id' do
  @post = Post.get(params[:id])
  haml :'writing/view'
end

