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
      test_word = Word.new({:name => 'discover', :type => 'verb'})
      test_word.save
      expect(Word.all).to(eq([test_word]))
    end
  end

    describe('.clear') do
      it('clears the words array') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        test_word.save
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

    describe('#definitions') do
      it('returns all definitions for a word; it is empty to start') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        expect(test_word.definitions).to(eq([]))
      end
    end

    describe('#add_definition') do
      it('adds a definition to a word') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        test_definition = Definition.new({:text => 'find unexpectedly or in the course of a search'})
        test_word.add_definition(test_definition)
        expect(test_word.definitions).to(eq([test_definition]))
      end
    end

    describe('.sort') do
      it('sorts the words array alphabetically') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        test_word.save
        test_word2 = Word.new({:name => 'ambition', :type => 'noun'})
        test_word2.save
        test_word3 = Word.new({:name => 'alliteration', :type => 'noun'})
        test_word3.save
        Word.sort
        expect(Word.all).to(eq([test_word3, test_word2, test_word]))
      end
    end

    describe('.randomize') do
      it('returns a random word from the words array') do
        test_word = Word.new({:name => 'discover', :type => 'verb'})
        test_word.save
        test_word2 = Word.new({:name => 'ambition', :type => 'noun'})
        test_word2.save
        test_word3 = Word.new({:name => 'alliteration', :type => 'noun'})
        test_word3.save
        random_word = Word.randomize
        expect(random_word).to(eq(random_word))
      end
    end
end #Class Word end
