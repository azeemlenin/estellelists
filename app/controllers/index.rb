get '/' do
  redirect "/categories"
end
#categories
get "/categories" do
  @categories = Category.all
  erb :index
end

# categories new
get "/categories/new" do
  erb :category_create
end

#categories show
get "/categories/:c_id" do
  @category = Category.find(params[:c_id])
  erb :category_show
end

post "/categories" do
end

get "/categories/:category_id/edit" do
end

puts "/categories" do
end

delete "/categories/:c_id" do
end

#posts

get "/categories/:c_id/posts" do
  @category = Category.find params[:c_id]
  @posts = @category.posts
  erb :category_show
end

get "/categories/:c_id/posts/new" do
  @category = Category.find params[:c_id]
  erb :post_create
end

get "/categories/:c_id/posts/:p_id" do
  @category = Category.find params[:c_id]
  @post = Post.find params[:p_id]
  erb :post_show
end

post "/categories/:c_id/posts" do
  category = Category.find(params[:c_id])
  post = category.posts.new(params[:post])

  if post.save
    redirect "/categories/#{category.id}/posts/#{post.id}"
  else
    redirect "/categories/#{category.id}/posts/new"
  end
end

get "/categories/:category_id/posts/:p_id/edit" do
  @category = Category.find(params[:category_id])
  @post = Post.find(params[:p_id])
  @secreto = Post.find(params[:p_secret])

  if @secreto == @post.secret

  else

  end
  erb :post_edit
end

put "/categories/:c_id/posts/:p_id" do
  category = Category.find(params[:c_id])
  post = category.posts.find(params[:p_id])
  post.update(params[:post])
  redirect "/categories/#{category.id}/posts/#{post.id}"
end

delete "/categories/:c_id/posts/:p_id" do
  post = Post.find(params[:p_id])
  post.destroy
  redirect "/categories/#{params[:c_id]}/posts"
end





# get '/' do
#   # Look in app/views/index.erb
#   erb :index
# end

# get '/create_post' do

#   erb :create_post
# end


# post '/create_post' do
#   list = Post.new(params)
#   if list.save
#     redirect "/posts/#{list.id}"
#   else
#     redirect "/create_post"
#   end
# end

# get "/posts/:list_id"  do
#   category = Post.find(params[:list_id])

#   erb :posts
# end









# get '/category/:category_id' do
#   @all = Category.all
#   # byebug
#   erb :category_house
# end

# get '/category_music' do
#   @all = Category.all
#   # byebug
#   erb :category_music
# end

# get '/category_car' do
#   @all = Craigslist.all
#   # byebug
#   erb :category_car
# end