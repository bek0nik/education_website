#encoding:UTF-8
class TestNamesController < ApplicationController
  respond_to :html
  layout 'testing'
   
  def index
    @tests = TestName.all
  end
  
  def show
  end
  
  def start
    @test = TestName.find(params[:id])
    @question = @test.questions.all.sample(30)
    session[:test_step].deep_merge!(params[:f]) if params[:f]
    @test.current_step = session[:test_step]
    if params[:back_button]
      @test.previous_step
#    elsif @test.last_step?
#      @test.result
    else
      @test.next_step      
    end
    session[:test_step] = @test.current_step       
  end

end
