class UserLesson
  include Mongoid::Document
  field :parent, type: Lesson
  field :completed, type: Boolean 
  embeds_many :questions
  belongs_to :user

  def self.get_default
    default = []
    Lesson.find_by(default: "true") do |lesson|
      default.push(UserLesson.new(parent: lesson))
    end
    #debugger
    return default
  end
end
