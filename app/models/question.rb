class Question < ActiveRecord::Base
  attr_accessible :answer, :question

  belongs_to :lesson


end
