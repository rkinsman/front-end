class User
  include Mongoid::Document
  attr_accessible :name, :email 
  field :name, type: String
  field :email, type: String
  has_one :currLesson, :class_name => "Lesson", :inverse_of => :owner
end
