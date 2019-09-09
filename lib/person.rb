class Person

  ATTRIBUTES = {
    :name => :text,
    :birthday => :date,
    :hair_color => :text, 
    :eye_color => :text, 
    :height => :integer, 
    :weight=> :integer, 
    :handed => :text,
    :complexion => :text,
    :t_shirt_size => :text, 
    :wrist_size => :text,
    :glove_size => :text,
    :pant_length => :integer,
    :pant_width => :integer
  }

  def initialize(attrs)
    Person.attributes.each do |attribute|
      if attrs.keys.include?(attribute)
        self.send("#{attribute}=", attrs[attribute])
      end
    end
  end

  def self.attributes_hash
    ATTRIBUTES
  end

  def self.attributes
    ATTRIBUTES.keys
  end

  self.attributes.each do |attribute|
    attr_accessor attribute
  end

end