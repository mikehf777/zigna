class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :nombre, :email, :asunto, :mensaje
 
  validates_presence_of :nombre
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :mensaje, :maximum => 500
  
  def initialize(attributes = {})
    attributes.each do |nombre, value|
      send("#{nombre}=", value)
    end
  end

  def persisted?
    false
  end
  
end