# GET /photos photos#index  display a list of all photos
# GET /photos/new photos#new  return an HTML form for creating a new photo
# POST  /photos photos#create create a new photo
# GET /photos/:id photos#show display a specific photo
# GET /photos/:id/edit  photos#edit return an HTML form for editing a photo
# PATCH/PUT /photos/:id photos#update update a specific photo
# DELETE  /photos/:id photos#destroy  delete a specific photo
get '/' do
	redirect '/categories'
end

get '/categories' do
  @categories = Category.all
  erb :'categories/index'
end

get '/categories/:categ_id' do
  @articles = Article.where(category_id: params[:categ_id].to_i)
  @category = Category.where(id: params[:categ_id].to_i)
  if @articles
    erb :'articles/index'
  else
    redirect '/categories'
  end
end


