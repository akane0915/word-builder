require 'word'
require 'rspec'
require 'pry'
require 'definition'

describe(Word) do
  before() do
    Word.clear
  end

  describe('#name') do
    it('returns the name of the word') do
      test_word = Word.new({:name => 'discover', :type => 'verb'})
      expect(test_word.name).to(eq('discover'))
    end
  end

  describe('#type') do
    it('returns the type of the word') do
      test_word = Word.new({:name => 'discover', :type => 'verb'})
      expect(test_word.type).to(eq('verb'))
    end
  end

  describe('.all') do
    it('returns the array of all words; it is empty to start') do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word to the words array') do
      test_word = Word.new({:name => 'discover', :type => 'verb'}).save
      expect(Word.all).to(eq(test_word))
    end
  end

    describe('.clear') do
      it('clears the words array') do
        test_word = Word.new({:name => 'discover', :type => 'verb'}).save
        Word.clear
        expect(Word.all).to(eq([]))
      end
    end

    describe('#id') do
      it('returns the id of the word') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        expect(test_word.id).to(eq(1))
      end
    end

    describe('.find') do
      it('finds a word by the id and returns the word') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        test_word.save
        test_word2 = Word.new({:name => 'ambition', :type => 'noun'})
        test_word2.save
        expect(Word.find(test_word.id)).to(eq(test_word))
      end
    end
end #Class Word end
