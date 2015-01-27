get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/all_categories' do
  puts "[LOG] Getting /all_categories"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_all_categories
end

get '/all_posts' do
  puts "[LOG] Getting /all_posts"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_all_posts
end



post '/new_post' do
  puts "[LOG] Posting to /new_post"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_new_post
end