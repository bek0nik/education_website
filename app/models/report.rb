#encoding:UTF-8
class Report < ActiveRecord::Base
  validates :user_id, :test_name_id, :result, presence: true
  
#  find question name 
  def self.return_question(name)
    @q = Question.find(name)    
  end
end
