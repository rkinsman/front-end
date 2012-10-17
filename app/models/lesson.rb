class Lesson 
  include Mongoid::Document
  attr_protected :title, :id
  field :title,   type: String
  embeds_many :questions
  has_many :questions, :class_name => "Question", :inverse_of => :lesson

  accepts_nested_attributes_for :questions
end
