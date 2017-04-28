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
end #class Definition end
