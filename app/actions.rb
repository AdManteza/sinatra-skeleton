# Homepage (Root path)
get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  # @message = Message.new
  erb :'messages/new'
end

post '/messages' do
  @message = Message.new(
    title: params[:title],
    content: params[:content],
    author:  params[:author]
  )
  binding.pry
  @message.save
  redirect '/messages'
end

# get '/' do
#   erb :index
# end
