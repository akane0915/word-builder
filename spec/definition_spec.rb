require 'rspec'
require 'pry'
require 'definition'

describe(Definition) do
  describe('#text') do
    it('returns the text of the definition') do
      test_definition = Definition.new({:text => 'find unexpectedly or in the course of a search'})
      expect(test_definition.text).to(eq('find unexpectedly or in the course of a search'))
    end
  end

  describe('.all') do
    it('returns the array of all definitions; it is empty to start') do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a definition in the array of definitions') do
      test_definition = Definition.new({:text => 'find unexpectedly or in the course of a search'})
      test_definition.save
      expect(Definition.all).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('clears the array of definitions') do
      test_definition = Definition.new({:text => 'find unexpectedly or in the course of a search'})
      test_definition.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end
end #class Definition end
