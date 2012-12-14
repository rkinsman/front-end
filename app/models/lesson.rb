require 'net/http'
require 'json'

class Lesson 
  include Mongoid::Document
  attr_accessible :title, :lesson_id, :default
  field :title,   type: String
  field :default, type: String
  embeds_many :questions
  accepts_nested_attributes_for :questions
#  embeds_many :questions, :class_name => "Question", :inverse_of => :lesson

  def send_on_complete()
    @host = 'localhost'
    @port = '1337'

    @path = ""
    
    qs = Array.new()
    self.questions.each.to_json do |q| qs.push(q) end

    @body = qs

    request = Net::HTTP::Post.new(@path, initheader = {'Content-Type' =>'application/json'})
    request.body = @body
    response = Net::HTTP.new(@host, @port).start {|http| http.request(request) }

  end

  def complete()
    self.completed = true
    send_on_complete()
  end

end
