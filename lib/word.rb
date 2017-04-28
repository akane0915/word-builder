class Word
  attr_reader(:name, :type)
  
  def initialize (attributes)
    @name = attributes.fetch(:name)
    @type = attributes.fetch(:type)
  end

end #class Word end
