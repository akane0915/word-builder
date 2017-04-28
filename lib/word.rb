class Word
  @@words = []
  attr_reader(:name, :type, :id)

  def initialize (attributes)
    @name = attributes.fetch(:name)
    @type = attributes.fetch(:type)
    @id = @@words.length + 1
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

  def self.find(unique_id)
    matched_word = nil
    @@words.each do |word|
      if word.id == unique_id
        matched_word = word
      end
    end
    matched_word
  end


end #class Word end
