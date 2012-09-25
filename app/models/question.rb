class Question 
  include Mongoid::Document  
  attr_protected :qText, :aText, :id
  field :qText, type: String
  field :aText, type: String
  field :id,    type: Integer

  belongs_to :lesson, :class_name => "Lesson", :inverse_of => :questions
end
