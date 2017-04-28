require 'word'
require 'rspec'
require 'pry'
require 'definition'

describe(Word) do
  describe('#name') do
    it('returns the name of the word') do
      test_word = Word.new({:name => 'discover', :type => 'verb'})
      expect(test_word.name).to(eq('discover'))
    end
  end
end
