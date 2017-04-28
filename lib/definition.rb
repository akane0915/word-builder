class Definition
  @@definitions = []
  attr_reader(:text)

  def initialize(attributes)
    @text = attributes.fetch(:text)
  end

  def self.all
    @@definitions
  end

  def save
    @@definitions.push(self)
  end

  def self.clear
    @@definitions = []
  end
end #class Definition end
