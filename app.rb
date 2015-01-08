require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/palindromes')

get('/form') do
  erb(:form)
end

get('/result') do

  result = params.fetch('input').palindromes()
    if result == true
      @text = "is a palindrome."
    else
      @text = "is not a palindrome."
    end

  @input = (params.fetch('input')).capitalize()
  erb(:result)
end
