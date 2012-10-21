class Question 
  include Mongoid::Document  
  attr_protected :qText, :correctAnswer, :aText, :id
  before_create :default_values

  field :qText, type: String
  field :correctAnswer, type: Boolean
  field :aText, type: String
  field :learnerAnswer, type: String
  belongs_to :lesson, :class_name => "Lesson", :inverse_of => :questions


  private
    def default_values
      self.learnerAnswer ||= "U"
    end
end
