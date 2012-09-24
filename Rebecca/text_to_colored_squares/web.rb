$: << "lib"

require "sinatra"
require "application"
require "picture"
require "square"



get "/" do
"
<h1>Text to squares</h1>
<p>Please input your secret:</p>
<form method= 'post'>
<textarea name= 'input'></textarea>
<input type= 'submit' />
</form>
"
end

post '/' do
	Application.new(params[:input]).render
end

# post "/" do 
# string = params[:input]
# app = Application.new(string)
# app.render
# end

# get "/:input" do 
# string = params[:input]
# app = Application.new(string)
# app.render
# end





# get '/' do
#   "Hello World"
# end

# get '/pizza' do
#   "PIZZA <b>PIZZA</b>"
# end

# get "/:name" do |name|
# 	"hello #{name}"
# end

# get "/:a/loves/:b" do |a,b|
# 	"yes #{a} loves #{b}"
# end

# get "/" do
# 	status 418
# 	" I am a teapot"
# end
