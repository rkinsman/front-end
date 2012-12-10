class Question 
  include Mongoid::Document  
  attr_accessible :qText, :correctAnswer, :aText, :id
  before_create :default_values

  field :qText, type: String
  field :correctAnswer, type: String 
  field :aText, type: String
  field :learnerAnswer, type: String
  embedded_in :lesson

  private
    def default_values
      self[:learnerAnswer] ||= "U"
    end
end
