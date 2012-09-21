class Lesson < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  attr_accessible :questions, :title
  validates_presence_of :title

  def add_question(question)
    self.questions << question
  end

end
