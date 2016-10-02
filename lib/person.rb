require  'pry'
class Person

attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

def initialize(attributes)
  attributes.each do |attribute, value|
    attribute_with_equal = (attribute.to_s+"=").to_sym
    self.send(attribute_with_equal, value)
  end
end


end