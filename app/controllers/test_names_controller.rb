#encoding:UTF-8
class TestNamesController < ApplicationController
  respond_to :html
  layout 'testing'
  before_filter :test_deny 
   
  def index
    @tests = TestName.all
  end
  
  def show
    @test = TestName.find(params[:id])
    question = Hash.new(@test.questions.all.sample(30))
    @question = @test.questions.all.sample(30)
    #render :action => :start
  end
  
  def start
    @test = TestName.find(params[:id])
    @question = @test.questions.all.sample(30)
    session[:test_step].deep_merge!(params[:f]) if params[:f]
    @test.current_step = session[:test_step]
    if params[:back_button]
      @test.previous_step
    elsif @test.last_step? 
      @test.result
    else
      @test.next_step   
    end
    session[:test_step] = @test.current_step       
  end

end
