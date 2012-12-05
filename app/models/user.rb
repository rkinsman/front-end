class User
  include Mongoid::Document
  attr_accessible :name, :email, :id
  field :name, type: String
  field :email, type: String
  has_one :currLesson, :class_name => "Lesson", :inverse_of => :owner
  has_many :completedLessons, :class_name => "Lesson"
end
