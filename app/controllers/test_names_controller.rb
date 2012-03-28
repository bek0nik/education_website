#encoding:UTF-8
class TestNamesController < ApplicationController
  respond_to :html
  
  def index
    @tests = TestName.all
  end
  
  def tester
        
  end
  
  def show
    
  end
  
  

end
