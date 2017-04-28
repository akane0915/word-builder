require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

post('/') do
  name = params.fetch('name')
  type = params.fetch('type')
  word = Word.new({:name => name, :type => type})
  word.save
  @words = Word.all
  erb(:success_word)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end
