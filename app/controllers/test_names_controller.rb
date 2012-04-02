#encoding:UTF-8
class TestNamesController < ApplicationController
  respond_to :html
  
  def index
    @tests = TestName.all
  end
  
  def start            
    @test = TestName.find(params[:id])
    @question = @test.questions.all
      
  end
  
  def show
      
  end
  
  

end
