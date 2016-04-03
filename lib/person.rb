class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
                :weight, :handed, :complexion, :t_shirt_size,
                :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}"), value)}
  end
end

  avi_attributes = {
      :name => "Avi",
      :birthday => "01/29/1984",
      :hair_color => "brown",
      :eye_color => "brown",
      :height => "short",
      :weight => "good",
      :handed => "lefty",
      :complexion => "decent",
      :t_shirt_size => "medium",
      :wrist_size => "small",
      :glove_size => "normal",
      :pant_length => "32",
      :pant_width => "32"
    }

  spencer_attributes = {
      :name => "Spencer",
      :hair_color => "N/A",
      :height => "medium",
      :weight => "good",
      :handed => "righty",
    }

  avi = Person.new(avi_attributes)
  spencer = Person.new(spencer_attributes)
