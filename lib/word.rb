class Word
  attr_reader(:name, :type)
  @@words = []

  def initialize (attributes)
    @name = attributes.fetch(:name)
    @type = attributes.fetch(:type)
  end

  def self.all
    @@words
  end

  def save
    @@words.push(self)
  end

  def self.clear
    @@words = []
  end

end #class Word end
