class UserLesson
  include Mongoid::Document
  field :parent, type: Lesson
  field :completed, type: Boolean 
  embeds_many :questions
  belongs_to :user
end
