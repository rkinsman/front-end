class User
  include Mongoid::Document

  attr_accessible :name, :email, :id, :username, :_id
  before_create :default_values

  field :username, type: String #VALIDATE THIS
  field :name, type: String
  field :email, type: String
  field :_id, type: String, default: ->{ username }
  has_one :curr_lesson, :class_name => "UserLesson"
  has_many :lessons, :class_name => "UserLesson"

  private
    def default_values
      UserLesson.get_default.each do |x|
        lessons.push(x)
      end
    end
end
