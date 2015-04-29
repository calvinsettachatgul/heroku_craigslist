get '/articles/' do
end

post '/articles' do
   @article = Article.new(name: params[:name],
    price: params[:price],
    description: params[:description],
    email: params[:email],
    category_id: params[:category_id])
   if @article.save
    redirect "/articles/#{@article.id}"
  else
    status 400
    erb :'articles/new'
  end
end

get '/articles/new' do
  @article = Article.new
  erb :'articles/new'
end

get '/articles/:id' do
  @article = Article.where(id: params[:id])
  erb :'articles/show'
end
