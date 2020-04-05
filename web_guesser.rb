require 'sinatra'
require 'sinatra/reloader'

$number = rand(1..100)

def check_guess(guess)
  guess = guess.to_i

  if (guess == 0)
    "Make a Guess!"
  elsif (guess == $number)
     "You got it right!"
  elsif (guess > $number)
     "Too high!"
  elsif (guess < $number)
     "Too low!"
  end
end

get '/' do
    guess = params["guess"]
    message = check_guess(guess)
    erb :index,
    :locals => {:number => $number, :message => message}
end

