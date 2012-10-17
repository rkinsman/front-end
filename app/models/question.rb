class Question 
  include Mongoid::Document  
  attr_protected :qText, :correctAnswer, :aText 
  field :qText, type: String
  field :correctAnswer, type: Boolean
  field :aText, type: String
  belongs_to :lesson, :class_name => "Lesson", :inverse_of => :questions

end
