class Lesson 
  include Mongoid::Document
  attr_protected :title, :id
  field :title,   type: String
  field :id,      type: Integer


  belongs_to :owner, :class_name => "User", :inverse_of => :currLesson
  has_many :questions, :class_name => "Question", :inverse_of => :lesson
end
