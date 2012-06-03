#encoding:UTF-8
class Report < ActiveRecord::Base
  validates :user_id, :test_name_id, :result, presence: true
  belongs_to :user
  
#  find question name 
  def self.return_discipline(name)
    @q = TestName.find(name)    
  end
  
  def self.discipline_name
    name = @q.title    
  end
    
  def self.find_user(user)
    @name = User.find(user)        
  end
    
  def self.return_result(date)
    @res = Report.where("finished = ? AND test_name_id = ? AND user_id = ?", date, @q.id, @name.id )
    #return @res.result        
  end
end
