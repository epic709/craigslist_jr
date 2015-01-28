get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  @categories = Category.all
  # Category.all.each do |c|
  #   # params["category_#{c.id}"] = c.description
  #   @categories << c.description
  # end
  puts @categories
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get "/categories/:c_id" do
  puts "[LOG] Getting /categories/"
  puts "[LOG] Params: #{params.inspect}"
  # params[:c_id] = Category.find(params[:splat].at(0)).id
  # params[:c_desc] = Category.find(params[:splat].at(0)).description
  # @cur_category = Category.find(params[:splat].at(0)).description
  # puts @cur_category

  puts "[LOG] Params: #{params.inspect}"

  @posts = Post.where(category_id: params[:c_id])
  params[:c_desc] = Category.find(params[:c_id]).description

  erb :get_all_posts
end

get "/categories/:c_id/posts/:p_id" do
  puts "[LOG] Getting /a_specific_post"
  puts "[LOG] Params: #{params.inspect}"
  # params[:p_id] = params[:splat].to_s.split.last

  puts params[:p_id]

  @cur_post = Post.find(params[:p_id])
  erb :get_post
end


# post "/" do
#   puts "[LOG] Posting /a_new_post"
#   puts "[LOG] Params: #{params.inspect}"

#   redirect to("/post/new")
# end

get "/categories/:c_id/post/new" do

  puts "[LOG] The current category id is #{params[:c_id]}"
  params[:c_desc] = Category.find(params[:c_id]).description
  erb :new_post
end

post "/categories/:c_id" do
  puts "[LOG] Posting to /make a new post"
  puts "[LOG] Params: #{params.inspect}"

  redirect to("/categories/#{params[:c_id]}/post/new")
  # redirect to("/?anagram=#{answer}")
end

get '/thanks' do
  puts "[LOG] Params: #{params.inspect}"
  sleep(10)
  redirect to("/")
end

# post '/post/new' do
#   puts "[LOG] Posting to /make a new post"
#   puts "[LOG] Params: #{params.inspect}"
#   Post.create(title: params[p_title],
#             description: params[p_desc],
#             location: params[p_location],
#             phone: params[p_phone],
#             email: params[p_email],
#             price: params[p_price].to_f)

# end