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

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:definitions_form)
end

post('/words/:id') do
  text = params.fetch('text')
  @definition = Definition.new({:text => text})
  @definition.save
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_definition(@definition)
  erb(:success_definition)
end
