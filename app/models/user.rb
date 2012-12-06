class User
  include Mongoid::Document
  attr_accessible :name, :email, :id, :username, :_id
  #attr_protected :_id
  field :username, type: String #VALIDATE THIS
  field :name, type: String
  field :email, type: String
  field :_id, type: String, default: ->{ username }
  #has_one :currLesson, :class_name => "Lesson"
  #has_many :completedLessons, :class_name => "Lesson"
end
