class Question 
  include Mongoid::Document  
  attr_protected :qText, :correctAnswer, :aText, :id
  before_create :default_values

  field :qText, type: String
  field :correctAnswer, type: String 
  field :aText, type: String
  field :learnerAnswer, type: String
  embedded_in :lesson
#  belongs_to :lesson, :class_name => "Lesson", :inverse_of => :questions

  private
    def default_values
      self[:learnerAnswer] ||= "U"
    end
end
