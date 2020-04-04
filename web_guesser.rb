require 'sinatra'
require 'sinatra/reloader'

num = rand(1..100)
get '/' do
    "The SECRET NUMBER is: #{num} "
    
end

